.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xf1b9, %rsi
lea addresses_normal_ht+0x1d5b9, %rdi
clflush (%rsi)
and %rbx, %rbx
mov $10, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rbp
lea addresses_normal_ht+0xb695, %r10
nop
nop
nop
nop
cmp $48656, %r8
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
movups %xmm3, (%r10)
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_UC_ht+0x9af9, %rdi
nop
nop
nop
xor $53253, %r8
mov (%rdi), %ebp
nop
and %r8, %r8
lea addresses_D_ht+0x17fb9, %rsi
lea addresses_UC_ht+0x4db9, %rdi
clflush (%rdi)
nop
nop
and $19851, %r9
mov $117, %rcx
rep movsw
nop
nop
and %rbx, %rbx
lea addresses_D_ht+0xcf09, %rsi
nop
nop
nop
nop
nop
cmp $22024, %r10
movb (%rsi), %r8b
nop
nop
nop
cmp %r9, %r9
lea addresses_WT_ht+0xddb9, %rbp
nop
nop
nop
cmp %r10, %r10
mov (%rbp), %ecx
nop
xor %rbp, %rbp
lea addresses_D_ht+0x105b9, %rsi
lea addresses_WT_ht+0x185b9, %rdi
clflush (%rsi)
nop
nop
inc %rbp
mov $48, %rcx
rep movsw
nop
nop
nop
nop
sub $33966, %r9
lea addresses_WT_ht+0x19779, %rsi
lea addresses_WC_ht+0x15db9, %rdi
nop
nop
nop
nop
add $19971, %rbp
mov $115, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0xdca9, %rsi
lea addresses_normal_ht+0x6db9, %rdi
nop
nop
nop
nop
xor $11692, %r10
mov $40, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_UC_ht+0x87f9, %rbp
nop
and %rdi, %rdi
vmovups (%rbp), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x1d3b9, %rsi
lea addresses_normal_ht+0x11f9, %rdi
nop
nop
nop
nop
cmp $58346, %rbx
mov $73, %rcx
rep movsl
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x4d39, %rbx
nop
nop
nop
nop
nop
inc %r10
movw $0x6162, (%rbx)
nop
nop
nop
nop
nop
xor %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x8229, %rax
nop
nop
nop
nop
nop
sub $30695, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, (%rax)
nop
nop
sub %rbx, %rbx

// REPMOV
lea addresses_normal+0x95b9, %rsi
lea addresses_normal+0x95b9, %rdi
nop
nop
nop
cmp $19151, %r10
mov $61, %rcx
rep movsw
nop
cmp %rax, %rax

// Store
lea addresses_PSE+0x29c5, %r13
nop
inc %rbx
mov $0x5152535455565758, %rax
movq %rax, %xmm5
movaps %xmm5, (%r13)
nop
add %rdi, %rdi

// Store
lea addresses_UC+0x1ced1, %rax
nop
nop
add $15822, %rdi
movb $0x51, (%rax)
nop
nop
and %rcx, %rcx

// Faulty Load
lea addresses_normal+0x95b9, %rcx
nop
nop
inc %rsi
movntdqa (%rcx), %xmm1
vpextrq $1, %xmm1, %rdi
lea oracles, %rbx
and $0xff, %rdi
shlq $12, %rdi
mov (%rbx,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_PSE'}}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 2, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}}
{'46': 27, '44': 3, '48': 27, '00': 6350, '34': 15408, '49': 14}
00 34 00 34 34 34 00 00 00 00 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 00 34 00 00 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 00 34 00 34 34 34 34 00 34 34 00 00 00 34 34 34 34 34 34 00 34 34 34 34 00 34 00 34 00 00 34 34 34 34 34 34 34 34 34 34 34 00 34 34 00 34 00 34 34 00 00 00 00 00 34 34 34 34 34 34 00 00 34 34 00 34 34 34 34 34 00 00 34 00 34 00 00 34 34 34 00 00 34 34 34 34 34 00 00 00 00 34 34 34 34 34 00 34 00 34 34 00 34 34 00 34 34 34 00 00 34 34 34 34 34 34 34 34 00 00 00 34 00 00 34 00 34 34 34 00 34 34 34 34 34 00 34 34 00 34 00 34 34 34 34 00 34 34 34 34 34 34 00 34 34 34 46 34 34 00 34 00 34 34 34 00 34 34 34 00 00 34 00 34 34 34 00 34 34 34 34 34 34 00 34 00 00 00 34 00 00 00 00 34 34 00 34 00 34 00 34 00 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 00 34 00 34 34 34 00 00 00 34 34 34 34 34 00 34 34 34 34 34 34 00 34 34 00 34 00 34 34 00 34 00 34 00 34 00 34 34 34 34 34 34 34 00 34 34 34 00 34 34 00 34 00 34 34 34 34 00 00 00 34 00 00 34 34 00 00 00 00 34 34 34 34 00 34 00 34 00 00 34 34 34 34 34 00 00 34 34 34 00 34 34 34 00 00 34 34 34 34 00 34 34 34 00 00 34 34 34 34 34 34 34 34 00 34 34 34 34 00 00 34 34 00 00 34 34 34 34 34 34 34 00 34 34 34 34 34 34 00 34 00 00 34 00 34 34 00 00 34 34 34 34 00 34 00 34 34 34 34 34 34 34 34 00 34 34 00 00 34 34 00 34 00 34 00 34 34 00 00 34 34 34 34 34 00 34 34 34 00 00 34 34 00 34 34 00 34 34 34 00 34 00 34 34 34 34 00 34 34 00 34 00 00 00 34 34 34 00 00 34 34 34 34 34 34 00 00 34 34 00 00 00 34 34 34 34 00 34 34 34 34 34 34 00 34 34 00 34 34 34 00 34 00 34 00 00 34 34 00 34 34 00 00 34 00 34 34 00 00 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 00 00 34 00 00 34 34 00 34 34 00 00 34 34 00 34 34 00 00 34 00 34 00 00 34 34 34 34 34 34 34 34 00 34 34 00 34 34 00 34 34 00 00 34 00 34 34 34 34 34 00 34 34 34 00 34 34 00 00 34 34 00 00 34 00 34 34 34 34 34 34 34 34 34 00 34 00 34 34 34 34 34 00 00 34 00 34 00 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 00 34 00 00 00 34 34 34 00 00 00 00 34 00 34 00 00 34 34 34 34 00 34 00 00 00 34 00 34 34 34 34 34 34 34 34 00 34 34 34 00 34 34 34 34 34 34 34 34 34 34 00 34 00 34 34 00 34 00 34 00 00 34 34 34 34 00 34 34 00 00 34 00 34 34 34 00 34 34 34 34 00 34 00 34 34 34 34 34 34 34 00 00 34 34 34 00 34 34 00 00 34 00 34 34 34 00 34 34 34 34 34 34 00 00 00 34 00 00 34 34 00 34 34 34 34 34 34 00 34 34 00 34 34 00 34 34 34 34 34 34 34 34 00 34 34 34 34 00 34 34 34 00 34 00 00 34 34 34 34 00 00 00 34 00 34 34 34 34 34 34 00 34 00 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 00 00 34 00 34 34 34 00 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 00 34 34 00 00 34 34 00 34 34 34 34 34 00 00 34 34 00 34 34 34 34 00 34 34 34 00 34 34 34 00 34 34 00 34 34 00 34 34 34 34 34 00 00 34 00 34 00 00 00 34 00 00 34 34 34 00 34 34 34 00 34 34 34 00 34 34 34 00 00 34 34 00 34 00 34 00 00 34 34 34 00 34 00 34 34 34 34 34 34 34 34 00 00 34 34 34 34 00 34 34 34 00 34 34 34 34 00 34 00 00
*/
