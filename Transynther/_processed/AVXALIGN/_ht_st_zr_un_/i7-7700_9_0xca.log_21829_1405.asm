.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x6551, %rcx
clflush (%rcx)
nop
xor $9870, %r13
movb $0x61, (%rcx)
xor %rdx, %rdx
lea addresses_WT_ht+0x2251, %rsi
lea addresses_normal_ht+0x3279, %rdi
nop
dec %r13
mov $125, %rcx
rep movsq
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0xdb91, %r13
clflush (%r13)
nop
nop
nop
nop
inc %r12
movups (%r13), %xmm0
vpextrq $1, %xmm0, %rdx
nop
nop
nop
xor $11474, %rdx
lea addresses_D_ht+0xdf91, %r13
nop
nop
nop
nop
add $35550, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
and $0xffffffffffffffc0, %r13
vmovntdq %ymm5, (%r13)
add %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x14639, %r14
nop
cmp $23467, %rsi
movw $0x5152, (%r14)
nop
inc %rsi

// Store
lea addresses_normal+0x10f51, %rcx
nop
nop
nop
nop
xor $36962, %r14
movw $0x5152, (%rcx)
nop
nop
nop
nop
xor $45438, %r8

// Store
lea addresses_D+0xb3f2, %r8
clflush (%r8)
nop
nop
nop
and %rbx, %rbx
movw $0x5152, (%r8)
and %rbx, %rbx

// Load
lea addresses_RW+0x5f51, %rbx
clflush (%rbx)
xor %rdi, %rdi
movb (%rbx), %r14b
nop
nop
nop
nop
cmp %r14, %r14

// Faulty Load
lea addresses_normal+0x17751, %rdi
nop
nop
nop
and %rbx, %rbx
movntdqa (%rdi), %xmm1
vpextrq $1, %xmm1, %r12
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 7, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_D_ht'}}
{'c0': 13, '49': 15015, '47': 1106, '00': 5694, '39': 1}
49 49 47 49 49 49 49 49 00 49 49 49 47 00 49 00 49 00 49 00 49 00 49 49 49 49 00 49 49 49 49 00 49 00 49 49 49 49 49 49 49 49 49 00 49 49 47 00 00 49 00 00 49 00 49 49 47 49 49 49 00 49 00 49 47 49 49 49 49 00 49 49 00 49 00 49 49 00 49 00 49 47 00 49 49 00 49 00 49 00 49 49 49 49 00 49 47 00 49 47 00 49 49 49 49 49 49 49 49 00 49 00 49 00 49 49 00 49 49 49 49 49 49 49 00 49 49 49 49 00 49 00 49 00 49 47 49 49 00 49 00 49 49 49 00 49 00 49 49 49 00 49 49 49 49 47 49 00 49 49 49 00 49 00 49 47 49 00 49 49 00 49 49 00 49 49 00 49 49 49 00 49 49 49 00 49 00 49 49 c0 49 49 49 00 49 49 00 49 47 00 49 00 49 49 49 49 49 49 00 49 00 49 49 49 00 49 49 00 49 00 49 49 49 00 49 49 00 49 49 49 49 49 00 49 49 49 49 49 00 49 49 49 49 49 00 49 49 00 00 49 47 49 49 49 00 49 47 49 00 49 49 00 49 49 49 00 49 49 49 49 00 49 49 49 00 49 47 49 49 49 49 00 49 00 49 49 00 49 49 49 49 47 49 49 49 49 49 00 49 49 49 00 49 49 49 49 49 49 49 49 00 49 49 00 49 49 49 00 49 49 49 00 49 49 49 49 00 49 49 00 49 00 49 00 49 49 00 49 49 00 49 00 49 00 49 49 00 49 47 49 47 00 49 49 49 47 49 00 49 49 00 49 00 49 49 00 49 49 49 49 49 49 00 49 49 49 47 00 49 49 49 49 49 49 49 49 47 00 49 00 49 00 49 49 49 00 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 00 49 00 49 00 49 49 49 49 00 49 49 00 49 49 49 49 00 49 49 49 47 00 49 00 49 00 49 00 49 47 00 49 49 00 49 49 49 49 49 49 49 00 49 00 49 49 49 49 00 49 49 00 49 00 49 00 49 49 49 00 49 49 49 49 00 49 49 47 49 00 49 c0 49 49 49 00 49 00 49 00 49 00 49 49 00 49 49 49 49 49 00 49 00 49 49 49 00 49 00 49 49 49 00 49 00 49 00 49 49 49 00 49 00 49 49 49 49 49 49 00 49 47 49 49 49 49 49 49 00 49 49 49 47 49 49 00 49 00 49 49 49 49 00 49 49 49 49 00 49 49 49 49 49 00 49 00 49 49 47 49 47 49 49 49 00 49 49 49 49 49 00 49 00 49 49 49 00 49 47 49 49 00 49 00 49 49 49 49 49 47 49 00 49 00 49 49 49 00 49 00 49 00 49 00 49 49 00 49 00 49 49 49 49 49 00 49 00 49 00 49 49 49 00 49 00 49 49 49 49 00 49 49 00 49 00 49 47 49 49 49 47 49 49 49 47 00 49 49 47 49 49 00 49 49 49 49 00 49 49 00 49 00 49 49 00 49 49 49 00 49 49 49 49 00 00 49 49 00 49 00 49 49 47 00 49 49 00 49 49 49 00 49 49 49 49 49 49 00 49 49 49 00 49 49 00 49 49 49 49 49 49 00 49 49 00 49 00 49 47 00 49 00 49 49 00 49 49 49 49 49 49 00 49 00 49 49 49 49 00 49 00 49 49 49 49 49 49 49 00 49 47 47 49 00 49 49 49 49 00 49 00 49 47 49 49 49 49 00 49 47 00 49 49 49 00 49 49 49 00 49 00 49 49 49 00 49 49 00 49 49 00 49 00 49 00 49 49 47 47 00 49 49 49 00 49 00 49 49 49 49 00 49 49 00 49 49 47 49 00 49 49 00 49 49 49 49 00 49 49 00 49 00 49 49 49 00 49 49 00 49 49 49 49 00 49 00 49 47 49 00 49 49 49 49 49 00 49 49 00 49 49 00 49 49 47 49 49 49 49 49 00 49 00 49 49 00 49 00 49 49 00 49 00 49 47 49 00 49 00 49 49 49 49 49 49 49 49 00 49 00 49 00 49 47 00 49 00 49 49 00 49 49 00 49 49 49 00 49 49 00 49 00 49 00 49 00 49 49 00 49 00 49 49 49 49 49 49 00 49 49 49 49 47 00 49 00 49 49 49 49 00 49 49 47 49 49 00 49 49 00 49 49 00 49 47 00 49 49 49 00 49 00 49 00 49 49 49 00 49 49 49 49 47 47 49
*/
