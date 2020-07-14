.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x18217, %r10
clflush (%r10)
nop
xor %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r10)
add %r12, %r12
lea addresses_UC_ht+0x13153, %rsi
nop
nop
xor %r12, %r12
mov (%rsi), %r11
nop
nop
nop
cmp $49438, %rsi
lea addresses_UC_ht+0xb67b, %r12
nop
nop
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r12)
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x1d33d, %rsi
lea addresses_normal_ht+0x65c7, %rdi
nop
nop
nop
nop
inc %rbp
mov $47, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x6c57, %rsi
nop
nop
nop
nop
nop
xor $17394, %rcx
movups (%rsi), %xmm2
vpextrq $1, %xmm2, %rbp
nop
nop
nop
nop
nop
dec %rbp
lea addresses_WC_ht+0xc547, %rcx
nop
nop
nop
nop
nop
cmp %rdi, %rdi
vmovups (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rsi
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x150bf, %rax
nop
nop
nop
dec %rbp
movl $0x61626364, (%rax)
nop
nop
nop
sub %r10, %r10
lea addresses_UC_ht+0x1cbdb, %rcx
nop
nop
nop
xor $30883, %rdi
mov (%rcx), %rbp
nop
nop
nop
nop
xor $51697, %rbp
lea addresses_WC_ht+0x12567, %rsi
lea addresses_A_ht+0x15877, %rdi
nop
nop
nop
nop
nop
xor $34467, %r12
mov $39, %rcx
rep movsw
nop
and $414, %r10
lea addresses_WT_ht+0x14775, %rcx
nop
nop
and $58163, %rdi
and $0xffffffffffffffc0, %rcx
vmovntdqa (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbp
nop
nop
nop
nop
nop
xor $7855, %r10
lea addresses_UC_ht+0x107bb, %rsi
lea addresses_normal_ht+0xf117, %rdi
nop
nop
nop
nop
inc %r12
mov $99, %rcx
rep movsq
nop
nop
sub $6708, %rcx
lea addresses_A_ht+0x1eb57, %rsi
nop
nop
nop
nop
nop
inc %rax
movw $0x6162, (%rsi)
nop
nop
mfence
lea addresses_WT_ht+0xa184, %rsi
lea addresses_WT_ht+0x14d57, %rdi
nop
sub $19148, %r12
mov $10, %rcx
rep movsq
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_A_ht+0x472f, %rdi
nop
nop
nop
nop
add $8643, %rax
movb (%rdi), %r11b
nop
mfence
lea addresses_UC_ht+0xbd47, %rcx
nop
nop
nop
nop
nop
and $50417, %r10
mov $0x6162636465666768, %r12
movq %r12, (%rcx)
nop
mfence
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rbx
push %rcx
push %rdx

// Store
lea addresses_WT+0x3d47, %rcx
nop
cmp $39273, %rdx
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movups %xmm4, (%rcx)
and %r10, %r10

// Store
mov $0x3c856c0000000709, %r11
nop
nop
nop
nop
nop
inc %rbx
mov $0x5152535455565758, %r10
movq %r10, %xmm5
vmovups %ymm5, (%r11)
nop
dec %r13

// Store
lea addresses_D+0x1d347, %r11
nop
nop
nop
nop
add $46359, %r8
movl $0x51525354, (%r11)
nop
nop
xor $383, %rcx

// Store
lea addresses_D+0x11c2d, %r10
nop
nop
and %r11, %r11
movl $0x51525354, (%r10)

// Exception!!!
nop
mov (0), %rcx
cmp $10778, %r8

// Faulty Load
lea addresses_WT+0x3d47, %rdx
nop
nop
nop
nop
nop
sub %r11, %r11
vmovups (%rdx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r13
lea oracles, %r10
and $0xff, %r13
shlq $12, %r13
mov (%r10,%r13,1), %r13
pop %rdx
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}}
{'48': 2306, '08': 6, '00': 9577, '49': 9869, '01': 71}
48 00 49 48 00 00 49 00 00 00 00 49 00 00 00 49 00 00 00 49 49 00 49 00 00 00 49 48 49 00 49 49 49 48 48 48 00 48 49 00 00 49 49 49 00 49 00 49 00 49 00 49 00 49 49 00 49 48 48 49 49 49 00 49 48 00 00 49 00 49 00 48 49 00 49 00 49 49 49 00 49 00 49 00 49 00 00 00 48 00 00 49 00 00 00 48 00 00 00 00 49 00 49 49 49 49 00 49 49 49 00 49 49 48 49 00 00 00 49 00 00 00 49 49 00 00 49 49 00 00 00 48 00 49 49 00 00 49 00 49 49 49 49 49 00 00 48 00 49 49 00 00 49 49 00 48 49 49 49 49 00 49 49 49 49 00 49 00 48 00 49 00 48 49 49 49 49 00 49 00 00 00 49 00 49 49 00 49 00 49 00 49 00 49 00 49 00 00 49 00 49 49 49 00 49 49 00 49 00 00 49 00 49 00 48 49 49 01 49 49 49 49 00 49 49 00 00 00 49 49 00 00 49 48 00 49 49 49 49 49 49 49 49 00 00 00 49 49 00 00 49 49 48 00 48 48 49 49 48 49 00 00 49 49 00 49 49 00 00 00 49 00 00 00 48 49 49 49 49 00 49 49 49 00 49 49 49 00 00 49 49 00 49 00 49 49 49 00 49 00 48 48 00 49 00 49 00 49 49 49 49 00 49 49 49 48 49 49 00 00 49 49 00 49 49 00 49 00 00 00 49 48 48 00 49 49 00 48 48 00 49 00 49 49 49 00 49 00 49 00 48 49 00 00 49 48 48 00 00 00 48 49 49 49 49 49 00 48 00 00 00 00 00 48 49 00 49 49 49 00 49 00 49 00 49 49 00 49 00 48 49 00 01 49 00 00 00 49 00 49 00 49 49 00 49 00 00 49 00 49 00 49 00 48 49 00 00 48 00 48 49 49 49 48 00 49 00 49 00 00 49 49 49 00 49 49 00 49 49 49 00 00 48 00 49 00 00 49 49 00 49 49 49 49 49 00 48 48 48 00 00 48 00 00 00 00 49 49 49 00 00 48 00 00 49 00 48 49 48 49 49 00 49 00 00 49 00 49 00 49 49 00 49 49 49 49 00 49 49 00 49 00 00 49 00 49 49 00 49 00 49 49 00 49 00 48 49 49 48 49 49 49 49 00 00 48 49 00 49 49 00 00 00 49 00 00 49 49 00 49 48 49 00 00 49 48 00 48 00 00 48 00 49 49 49 00 00 48 49 00 00 00 49 00 49 48 00 00 48 49 49 00 00 49 49 00 00 00 00 00 00 49 00 00 00 49 00 00 49 00 00 49 49 00 49 48 00 49 48 00 00 00 49 00 00 00 49 49 01 00 00 49 00 49 48 49 49 00 00 00 49 00 49 49 48 00 00 00 48 00 49 49 00 49 49 00 48 00 49 00 49 49 00 49 48 49 48 00 49 49 48 00 49 49 00 00 00 49 00 49 49 48 00 00 49 00 00 49 49 49 49 48 49 00 49 49 00 00 00 00 00 00 49 00 00 48 49 48 49 48 49 48 00 00 00 00 49 49 00 00 49 48 49 49 00 00 00 00 48 49 00 49 49 00 00 48 49 49 00 49 49 00 49 49 00 49 49 49 48 49 49 00 00 49 49 00 00 00 49 00 49 48 48 49 00 00 49 49 49 49 49 49 49 00 00 00 49 49 00 48 00 49 49 00 49 49 00 48 49 49 49 49 48 00 49 49 48 48 49 49 00 00 49 49 49 00 49 49 49 00 49 48 00 48 00 49 48 49 49 49 49 48 00 49 00 49 00 49 00 49 49 00 48 00 48 49 00 49 49 49 49 49 49 00 01 49 00 49 00 00 00 49 00 00 00 00 00 49 49 48 49 49 49 00 49 49 49 49 00 49 00 00 49 00 00 49 00 49 00 49 48 00 48 49 49 49 00 49 00 48 00 48 00 00 48 00 49 00 49 00 49 48 00 48 49 49 49 00 49 00 48 49 48 00 00 48 49 00 00 00 49 48 00 48 49 49 49 49 49 49 48 00 49 00 49 49 00 49 49 00 49 00 00 49 00 01 49 00 49 49 00 49 00 00 49 00 48 00 49 49 00 49 00 49 49 49 49 00 00 00 48 49 49 49 49 00 49 00 49 00 49 00 49 00 49 00 00 49 49 49 49 00 49 00 00 00 00 49 00 00 00 49 00 48 00 48 49 00 49 49 00 49 00 49 49 00 49 00 49 49
*/
