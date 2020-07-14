.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x7cc3, %r13
add $3416, %r12
movl $0x61626364, (%r13)
nop
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x1c2c3, %rax
nop
nop
nop
nop
nop
and $46165, %rbx
vmovups (%rax), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r11
nop
sub %r13, %r13
lea addresses_WT_ht+0x14e3, %r12
nop
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %r11
movq %r11, %xmm6
vmovups %ymm6, (%r12)
nop
nop
cmp $16139, %r11
lea addresses_normal_ht+0x1a4f3, %rsi
lea addresses_WC_ht+0x126b7, %rdi
nop
cmp %r12, %r12
mov $125, %rcx
rep movsl
nop
dec %rbx
lea addresses_normal_ht+0xa273, %r8
nop
nop
nop
nop
xor %rsi, %rsi
movw $0x6162, (%r8)
nop
nop
nop
nop
nop
dec %r12
lea addresses_A_ht+0x6605, %rax
nop
nop
nop
cmp %rcx, %rcx
mov (%rax), %bx
nop
nop
nop
nop
and $1478, %r13
lea addresses_WC_ht+0xa8c, %rcx
nop
nop
sub %rsi, %rsi
mov (%rcx), %r13d
nop
nop
nop
nop
xor %r11, %r11
lea addresses_UC_ht+0xb213, %rax
nop
nop
nop
sub %rsi, %rsi
mov (%rax), %r12
nop
nop
nop
nop
nop
dec %r8
lea addresses_WT_ht+0xa8f3, %rsi
lea addresses_A_ht+0x7f2b, %rdi
nop
nop
nop
nop
nop
inc %r11
mov $21, %rcx
rep movsb
nop
nop
xor $21789, %r11
lea addresses_A_ht+0x10bd, %r11
clflush (%r11)
nop
nop
nop
add $31340, %r13
movl $0x61626364, (%r11)
cmp $57079, %r8
lea addresses_UC_ht+0xb8f3, %rax
nop
and %rbx, %rbx
mov $0x6162636465666768, %r12
movq %r12, %xmm6
vmovups %ymm6, (%rax)
nop
nop
dec %rsi
lea addresses_D_ht+0x2a33, %r13
nop
dec %rax
mov $0x6162636465666768, %rcx
movq %rcx, (%r13)
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0x16ba4, %r13
nop
nop
nop
add $57089, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
and $0xffffffffffffffc0, %r13
movaps %xmm0, (%r13)
nop
nop
and %r12, %r12
lea addresses_WT_ht+0xc5f3, %r12
nop
nop
nop
nop
xor %rax, %rax
movups (%r12), %xmm0
vpextrq $1, %xmm0, %r8
nop
nop
inc %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rsi

// Store
lea addresses_UC+0x136f3, %rax
nop
nop
nop
nop
xor $60262, %rsi
movb $0x51, (%rax)
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_UC+0x9a27, %rbx
clflush (%rbx)
nop
nop
nop
nop
dec %r9
movw $0x5152, (%rbx)
sub $33022, %rsi

// Store
lea addresses_US+0x1525b, %rbx
nop
nop
inc %rsi
movw $0x5152, (%rbx)
nop
sub %rsi, %rsi

// Store
lea addresses_WC+0x10821, %rax
nop
nop
nop
nop
and %r15, %r15
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
xor %r9, %r9

// Faulty Load
lea addresses_PSE+0x1ecf3, %rsi
nop
inc %rcx
movb (%rsi), %bl
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': True, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
