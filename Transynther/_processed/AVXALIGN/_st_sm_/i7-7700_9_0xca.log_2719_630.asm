.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x7997, %r9
nop
nop
xor $27854, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, (%r9)
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x14797, %rdi
nop
nop
sub %rdx, %rdx
vmovups (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r10
nop
inc %rdx
lea addresses_A_ht+0x10a79, %rsi
lea addresses_UC_ht+0x5e97, %rdi
nop
inc %r11
mov $10, %rcx
rep movsw
sub $32795, %rdi
lea addresses_WT_ht+0xaf97, %rbp
nop
and $5591, %rdi
and $0xffffffffffffffc0, %rbp
movaps (%rbp), %xmm4
vpextrq $0, %xmm4, %rsi
xor $9577, %rdi
lea addresses_WC_ht+0x5f17, %r9
nop
nop
nop
nop
add %rdx, %rdx
movups (%r9), %xmm7
vpextrq $0, %xmm7, %rcx
nop
nop
add $28392, %r10
lea addresses_WT_ht+0xf397, %rsi
lea addresses_WC_ht+0x5d17, %rdi
nop
nop
nop
nop
nop
and $2682, %rdx
mov $89, %rcx
rep movsb
nop
sub $8064, %r9
lea addresses_WT_ht+0xce7, %r9
nop
nop
nop
nop
xor $8016, %r10
movups (%r9), %xmm7
vpextrq $0, %xmm7, %rdx
nop
nop
add %r11, %r11
lea addresses_normal_ht+0x13911, %rsi
nop
nop
nop
sub $27138, %rbp
mov $0x6162636465666768, %r10
movq %r10, %xmm2
movups %xmm2, (%rsi)
nop
nop
dec %r9
lea addresses_UC_ht+0x1d29f, %rsi
lea addresses_UC_ht+0x1458f, %rdi
clflush (%rdi)
nop
nop
dec %r11
mov $105, %rcx
rep movsw
nop
nop
nop
nop
and $55911, %rbp
lea addresses_WC_ht+0x5397, %rsi
lea addresses_WC_ht+0x19797, %rdi
nop
nop
nop
cmp %r11, %r11
mov $116, %rcx
rep movsq
nop
nop
nop
inc %rbp
lea addresses_WT_ht+0xa457, %rsi
clflush (%rsi)
add %r11, %r11
mov (%rsi), %di
sub $31119, %rdx
lea addresses_UC_ht+0x138b7, %r10
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm4
vmovups %ymm4, (%r10)
cmp $8112, %r11
lea addresses_UC_ht+0x11017, %r10
nop
nop
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r10)
nop
nop
nop
nop
add $3751, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_RW+0x8397, %r15
clflush (%r15)
nop
nop
and $9629, %rsi
movb $0x51, (%r15)
nop
and $38569, %r13

// Load
lea addresses_PSE+0x4f97, %rcx
nop
nop
and %rbx, %rbx
movups (%rcx), %xmm7
vpextrq $0, %xmm7, %rdi
nop
nop
nop
nop
nop
sub $2664, %r15

// Store
lea addresses_US+0x12a97, %rbx
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movntdq %xmm7, (%rbx)
nop
nop
nop
cmp $49662, %rbx

// Store
lea addresses_WT+0x1d7, %rdx
nop
nop
nop
dec %rcx
mov $0x5152535455565758, %rbx
movq %rbx, (%rdx)
nop
nop
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_A+0xf97, %rsi
nop
nop
add %rcx, %rcx
movw $0x5152, (%rsi)
nop
nop
nop
add $50840, %rsi

// Store
lea addresses_PSE+0x7f97, %r13
nop
nop
and %rdi, %rdi
movl $0x51525354, (%r13)
nop
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_PSE+0x7f97, %r15
nop
nop
nop
nop
add $58476, %rdi
mov (%r15), %edx
lea oracles, %rsi
and $0xff, %rdx
shlq $12, %rdx
mov (%rsi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_RW'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_PSE'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': True, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 9, 'AVXalign': True, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': True, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}}
{'54': 2719}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
