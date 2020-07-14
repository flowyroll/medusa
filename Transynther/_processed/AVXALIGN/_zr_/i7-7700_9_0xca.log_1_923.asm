.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x8871, %rbx
nop
nop
nop
nop
and $21501, %r15
movb (%rbx), %r10b
nop
nop
nop
sub $6316, %r10
lea addresses_D_ht+0x18b91, %r10
nop
nop
nop
add %r13, %r13
mov (%r10), %edi
nop
nop
nop
nop
sub $50834, %r10
lea addresses_A_ht+0x2471, %rsi
lea addresses_normal_ht+0x13ca9, %rdi
nop
nop
nop
nop
cmp $50082, %r10
mov $17, %rcx
rep movsl
cmp %rbp, %rbp
lea addresses_A_ht+0x4cb1, %r10
nop
cmp $6345, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r10)
nop
cmp $48995, %r13
lea addresses_normal_ht+0x1d431, %rsi
lea addresses_WT_ht+0x4f1, %rdi
nop
xor $39658, %r10
mov $88, %rcx
rep movsw
nop
nop
dec %rbx
lea addresses_normal_ht+0x5759, %rsi
lea addresses_WT_ht+0x15c71, %rdi
nop
nop
xor $35160, %rbx
mov $73, %rcx
rep movsq
nop
nop
and $51663, %rbp
lea addresses_D_ht+0x1b141, %r15
nop
nop
xor %r10, %r10
mov (%r15), %bx
nop
nop
nop
nop
sub %r15, %r15
lea addresses_normal_ht+0x5a71, %rcx
nop
nop
nop
nop
and $24035, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_WT_ht+0x26b9, %rdi
nop
nop
sub $51530, %r13
mov $0x6162636465666768, %r10
movq %r10, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
and $12480, %r10
lea addresses_normal_ht+0x1ee15, %r13
nop
nop
xor %r10, %r10
mov $0x6162636465666768, %r15
movq %r15, %xmm2
and $0xffffffffffffffc0, %r13
vmovaps %ymm2, (%r13)
nop
nop
nop
nop
and %r15, %r15
lea addresses_A_ht+0x13d01, %rcx
nop
nop
nop
nop
sub $29071, %rbp
movb $0x61, (%rcx)
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x4cb1, %rsi
lea addresses_A_ht+0x19871, %rdi
nop
nop
and %rbx, %rbx
mov $112, %rcx
rep movsl
nop
xor $23609, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x1167f, %rsi
xor $58046, %r11
mov $0x5152535455565758, %rax
movq %rax, (%rsi)
nop
nop
and $50740, %r9

// REPMOV
lea addresses_RW+0x7811, %rsi
lea addresses_D+0x16e71, %rdi
nop
nop
nop
nop
sub %r11, %r11
mov $51, %rcx
rep movsb
nop
nop
nop
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_D+0xde71, %rdi
nop
add %rsi, %rsi
movaps (%rdi), %xmm7
vpextrq $0, %xmm7, %r9
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_RW'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_D'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 4, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}}
{'00': 1}
00
*/
