.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xfa75, %rbp
nop
nop
nop
nop
cmp $13528, %r8
movups (%rbp), %xmm7
vpextrq $1, %xmm7, %r9
nop
nop
nop
nop
add %r13, %r13
lea addresses_WT_ht+0x4845, %rsi
lea addresses_normal_ht+0xe2c5, %rdi
nop
nop
nop
and $27761, %r14
mov $28, %rcx
rep movsw
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x1e025, %rsi
lea addresses_A_ht+0xab25, %rdi
nop
nop
nop
cmp %rbp, %rbp
mov $77, %rcx
rep movsb
dec %r13
lea addresses_WC_ht+0x19345, %r14
nop
nop
nop
and %rbp, %rbp
mov (%r14), %r9
nop
nop
nop
nop
xor %r13, %r13
lea addresses_WC_ht+0xb17d, %rsi
lea addresses_UC_ht+0x17101, %rdi
clflush (%rsi)
cmp $5066, %r13
mov $109, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $23633, %r9
lea addresses_normal_ht+0xe845, %r9
nop
nop
sub %rdi, %rdi
mov (%r9), %r8w
xor %rdi, %rdi
lea addresses_A_ht+0x170f5, %rsi
lea addresses_WT_ht+0xd645, %rdi
nop
nop
nop
nop
nop
add $65077, %r8
mov $82, %rcx
rep movsq
cmp $32673, %rdi
lea addresses_WT_ht+0x6045, %rdi
nop
nop
nop
nop
and $54904, %r9
movl $0x61626364, (%rdi)
xor $37669, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r9
push %rbp
push %rbx
push %rsi

// Store
lea addresses_D+0x1e01, %rsi
nop
nop
nop
nop
nop
xor $32160, %rbp
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
xor $47660, %rsi

// Store
lea addresses_UC+0x45, %r14
add $54645, %r10
mov $0x5152535455565758, %rsi
movq %rsi, (%r14)
xor $50581, %rsi

// Store
lea addresses_WC+0x19d45, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
xor %r9, %r9
mov $0x5152535455565758, %r15
movq %r15, (%rbp)
nop
nop
nop
nop
add $9296, %rbp

// Load
mov $0x675, %rsi
clflush (%rsi)
sub $51125, %r9
movb (%rsi), %r15b
cmp $2067, %r14

// Faulty Load
mov $0x64f88c0000000845, %r10
nop
nop
nop
nop
nop
inc %rbp
vmovups (%r10), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
lea oracles, %r15
and $0xff, %rsi
shlq $12, %rsi
mov (%r15,%rsi,1), %rsi
pop %rsi
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}}
{'00': 5767, '48': 91, '45': 7908}
45 45 00 45 00 45 00 45 00 45 00 00 45 00 00 45 00 45 45 45 00 45 00 45 00 45 00 45 45 00 45 00 45 00 45 00 45 45 00 45 45 45 45 00 00 45 45 45 45 45 00 45 00 45 45 00 45 00 45 45 00 45 00 45 00 00 45 00 00 45 45 00 45 45 45 00 45 45 00 45 45 45 45 45 00 00 45 45 45 45 00 00 45 00 45 00 45 48 45 00 00 45 00 45 45 00 45 00 00 45 00 45 00 45 00 00 45 00 45 00 45 00 45 45 00 45 45 45 00 45 00 45 45 00 45 00 45 00 45 00 45 45 00 45 00 45 45 00 45 00 45 45 00 45 00 45 45 00 45 00 00 00 45 45 45 00 00 45 45 00 00 45 45 00 45 00 45 45 00 45 00 00 45 45 45 45 00 00 45 45 45 00 45 45 45 00 00 45 00 00 00 45 45 00 48 00 45 00 45 00 45 45 00 45 00 45 45 45 00 00 45 45 00 00 45 00 45 45 00 00 45 45 45 00 45 00 45 45 45 45 00 00 45 00 45 00 45 45 45 45 00 45 45 45 00 45 00 00 45 45 00 45 45 00 00 45 00 00 00 45 00 45 00 45 00 00 45 45 00 45 00 45 00 00 00 45 00 45 45 45 45 45 45 45 00 45 00 45 45 00 00 45 00 45 00 45 45 00 45 00 45 45 45 45 45 00 45 45 00 45 00 00 45 45 00 45 45 45 00 45 00 45 45 00 45 00 45 45 45 45 00 45 45 00 45 00 45 00 00 45 00 00 45 45 45 45 45 00 45 00 45 45 45 00 45 45 00 45 45 45 45 00 45 45 45 00 48 45 45 00 45 45 00 45 00 45 45 00 45 00 45 45 45 00 45 45 45 00 45 00 45 45 00 45 45 00 45 00 45 45 00 00 45 45 45 45 45 00 45 00 45 00 00 45 00 45 45 00 45 45 00 45 00 00 45 45 00 45 00 00 45 45 45 45 00 45 00 45 00 48 00 45 00 00 45 00 45 00 45 00 00 00 45 45 00 45 00 00 45 45 00 00 45 00 45 00 45 45 45 45 00 45 00 45 00 00 45 00 00 00 00 45 00 45 45 45 00 00 45 00 45 45 45 45 00 45 00 45 45 45 00 00 45 00 00 45 45 00 45 45 00 00 45 00 45 00 45 48 45 00 00 45 00 45 00 45 00 45 45 45 45 00 45 45 45 00 45 45 45 00 00 45 00 45 00 00 45 45 45 45 00 00 45 00 45 00 45 45 45 00 45 45 45 00 00 45 00 45 45 45 00 45 00 45 00 45 45 00 00 45 00 45 00 45 00 45 00 45 00 45 45 00 45 00 45 00 45 00 45 45 00 45 00 00 00 45 00 45 00 00 45 45 45 00 00 45 00 00 45 00 45 45 00 45 00 45 00 45 45 45 00 00 45 00 00 45 45 45 45 00 45 00 45 00 45 45 45 00 00 45 45 45 00 45 00 45 45 00 45 00 45 00 45 00 45 45 00 45 00 45 45 00 45 00 00 45 45 45 00 45 45 45 00 45 45 00 45 45 00 00 45 00 45 00 45 00 45 00 45 00 45 45 45 45 45 45 00 00 00 45 00 45 00 45 00 45 00 00 45 45 00 45 00 45 45 00 45 00 00 45 00 00 00 00 00 00 45 00 00 45 45 00 45 00 45 00 45 45 00 00 45 45 45 00 45 00 45 45 00 45 45 00 00 45 00 45 00 45 45 45 45 45 00 45 00 45 45 00 45 45 45 00 00 45 00 45 00 00 00 45 00 00 45 45 00 00 00 45 00 45 00 00 00 45 00 45 00 45 00 45 00 45 45 45 45 45 45 00 45 00 00 45 00 00 45 45 45 00 45 45 00 45 45 45 00 45 45 00 45 00 45 00 45 45 45 00 45 00 45 00 45 45 00 45 00 45 00 00 45 45 00 45 00 45 00 45 45 45 00 00 45 00 45 45 00 45 00 45 45 00 45 45 00 45 00 45 00 00 45 00 00 00 00 45 45 00 45 45 00 45 45 00 45 45 00 45 00 00 45 00 45 45 00 00 45 00 00 45 00 45 45 45 45 45 45 00 00 45 00 00 00 45 45 00 45 45 45 00 45 00 45 45 00 45 00 45 45 45 45 00 00 45 00 00 00 00 45 00 45 45 45 00 45 00 45 00 45 00 45 00 45 45 00 45 45 00 00 45 00 45 45 45 00 45 00 00 45 45 45 45
*/
