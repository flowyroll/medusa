.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1ede2, %rsi
lea addresses_A_ht+0x1c1e2, %rdi
clflush (%rsi)
clflush (%rdi)
sub $56893, %rbx
mov $52, %rcx
rep movsb
nop
nop
nop
cmp $32564, %r9
lea addresses_WT_ht+0xcf7e, %rbp
nop
nop
nop
nop
nop
and %r10, %r10
movb (%rbp), %bl
nop
inc %r9
lea addresses_D_ht+0x18f12, %rbp
nop
nop
and $57962, %rbx
mov (%rbp), %r9d
nop
nop
nop
nop
add %r9, %r9
lea addresses_UC_ht+0x7fe2, %rsi
lea addresses_WC_ht+0x179e2, %rdi
nop
nop
nop
nop
nop
and %r12, %r12
mov $69, %rcx
rep movsb
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_UC_ht+0x29a2, %rsi
nop
sub $2032, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
nop
nop
cmp $18363, %rsi
lea addresses_D_ht+0xf9ca, %r9
xor %r10, %r10
mov (%r9), %r12
nop
nop
nop
nop
nop
xor $37084, %r12
lea addresses_UC_ht+0x179e2, %rbp
nop
add $63848, %r12
vmovups (%rbp), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
nop
nop
dec %rbp
lea addresses_normal_ht+0x11422, %r10
nop
nop
nop
nop
and %rdi, %rdi
movl $0x61626364, (%r10)
nop
nop
cmp %r10, %r10
lea addresses_A_ht+0x1b4e2, %r9
nop
nop
xor $39110, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%r9)
nop
add $46486, %r10
lea addresses_UC_ht+0xfb2, %rbx
nop
sub $7045, %rdi
mov (%rbx), %r10w
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0x1582, %rsi
lea addresses_normal_ht+0x1a5e2, %rdi
clflush (%rdi)
cmp $15755, %r9
mov $94, %rcx
rep movsl
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0xdd22, %rsi
lea addresses_normal_ht+0x107e2, %rdi
clflush (%rdi)
add %r12, %r12
mov $72, %rcx
rep movsb
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x15eca, %rsi
lea addresses_WC+0xdbe2, %rdi
nop
nop
cmp $51852, %r8
mov $11, %rcx
rep movsb
sub %rsi, %rsi

// Load
lea addresses_RW+0xb7e2, %r8
nop
nop
nop
sub %rbx, %rbx
mov (%r8), %rsi
nop
nop
nop
inc %r13

// Faulty Load
lea addresses_A+0x99e2, %rsi
nop
nop
add %r13, %r13
mov (%rsi), %r8w
lea oracles, %rbx
and $0xff, %r8
shlq $12, %r8
mov (%rbx,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': True, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WC'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}}
{'00': 48}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
