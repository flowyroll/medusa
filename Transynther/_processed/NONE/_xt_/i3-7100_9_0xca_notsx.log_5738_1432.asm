.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1ed07, %rsi
lea addresses_D_ht+0x7707, %rdi
clflush (%rdi)
nop
nop
nop
cmp %r11, %r11
mov $82, %rcx
rep movsl
nop
nop
nop
nop
cmp $14782, %r10
lea addresses_D_ht+0x1b287, %rsi
lea addresses_WC_ht+0x8907, %rdi
nop
nop
nop
nop
nop
sub $34361, %r9
mov $86, %rcx
rep movsq
cmp $48085, %rcx
lea addresses_WT_ht+0x188ed, %rsi
nop
nop
nop
add $45814, %r8
mov (%rsi), %edi
dec %r8
lea addresses_A_ht+0xf07, %r10
nop
add %rcx, %rcx
movb $0x61, (%r10)
nop
cmp $61561, %r8
lea addresses_normal_ht+0x1605f, %rsi
nop
nop
and $54838, %rdi
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r9
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x18d0f, %r10
nop
nop
nop
nop
xor $58494, %r8
mov $0x6162636465666768, %rcx
movq %rcx, (%r10)
xor %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi

// Store
lea addresses_RW+0x18f07, %rax
nop
nop
nop
and %r10, %r10
movw $0x5152, (%rax)
nop
nop
xor %rdi, %rdi

// Store
lea addresses_A+0x15e07, %r13
nop
nop
nop
sub $58111, %r14
mov $0x5152535455565758, %rdi
movq %rdi, (%r13)
nop
nop
nop
nop
nop
inc %rcx

// Store
mov $0xae7, %rcx
nop
nop
nop
nop
nop
xor $32088, %rax
mov $0x5152535455565758, %r10
movq %r10, (%rcx)
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_WC+0xd259, %rax
cmp $26671, %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm5
movups %xmm5, (%rax)
nop
nop
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_US+0x10907, %r14
nop
nop
add $17618, %rbp
mov $0x5152535455565758, %rax
movq %rax, %xmm3
movups %xmm3, (%r14)
nop
nop
nop
nop
sub $54147, %r13

// Store
lea addresses_normal+0x7b07, %r10
nop
nop
nop
nop
sub $23216, %rcx
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_normal+0x13f07, %rax
nop
nop
nop
nop
and $39476, %r10
mov $0x5152535455565758, %r13
movq %r13, (%rax)
nop
nop
nop
nop
inc %rcx

// Store
lea addresses_D+0x5e07, %rax
cmp $44534, %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm1
vmovups %ymm1, (%rax)
nop
nop
sub $55629, %rbp

// Store
lea addresses_A+0x7307, %rbp
add %r10, %r10
movb $0x51, (%rbp)

// Exception!!!
mov (0), %rax
nop
nop
xor %rdi, %rdi

// Faulty Load
lea addresses_WT+0x1d707, %rbp
nop
nop
xor %rcx, %rcx
mov (%rbp), %edi
lea oracles, %rax
and $0xff, %rdi
shlq $12, %rdi
mov (%rax,%rdi,1), %rdi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_P', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'39': 5738}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
