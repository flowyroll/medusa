.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1a222, %r12
add %rbp, %rbp
movb $0x61, (%r12)
nop
nop
nop
cmp $47961, %rsi
lea addresses_UC_ht+0x18aba, %r10
nop
nop
nop
add %rax, %rax
mov (%r10), %r9w
and $22394, %r9
lea addresses_D_ht+0x59ba, %r10
nop
and %rbp, %rbp
vmovups (%r10), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rax
nop
nop
nop
and $1782, %rbp
lea addresses_A_ht+0x815a, %rsi
lea addresses_WT_ht+0x74ba, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
add %rbp, %rbp
mov $65, %rcx
rep movsb
and $15503, %r9
lea addresses_UC_ht+0x16cba, %rsi
lea addresses_UC_ht+0x5eda, %rdi
nop
nop
nop
nop
and %r12, %r12
mov $53, %rcx
rep movsw
cmp $52695, %rbp
lea addresses_WT_ht+0x1ae0e, %rsi
lea addresses_WC_ht+0x3dfa, %rdi
nop
nop
nop
nop
xor $61407, %rbp
mov $0, %rcx
rep movsb
nop
add $42013, %rax
lea addresses_A_ht+0x1e1ba, %rsi
lea addresses_normal_ht+0x1acba, %rdi
clflush (%rsi)
nop
nop
nop
xor $61300, %rax
mov $109, %rcx
rep movsq
add $18553, %rcx
lea addresses_UC_ht+0x18cf2, %rdi
nop
inc %r10
movb (%rdi), %cl
nop
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rax
push %rbp
push %rsi

// Load
mov $0xedb80000000e9c, %rbp
clflush (%rbp)
nop
nop
nop
nop
cmp %rsi, %rsi
vmovaps (%rbp), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r10
nop
nop
add %rsi, %rsi

// Store
lea addresses_WT+0xd8ca, %r11
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %rsi
movq %rsi, (%r11)
nop
xor %rsi, %rsi

// Load
lea addresses_A+0x156ba, %r11
nop
nop
nop
and %rax, %rax
mov (%r11), %r10d
nop
and $27236, %r11

// Store
lea addresses_normal+0x7653, %r8
nop
nop
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm1
vmovups %ymm1, (%r8)
nop
xor %rax, %rax

// Store
lea addresses_WT+0x174ba, %rsi
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %rax
movq %rax, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
nop
cmp $60160, %rax

// Store
lea addresses_WC+0x580a, %r10
nop
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm3
vmovntdq %ymm3, (%r10)
nop
nop
nop
nop
inc %rbp

// Faulty Load
lea addresses_PSE+0x1cba, %r10
nop
nop
nop
and $37443, %rax
movb (%r10), %r8b
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rsi
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'33': 143}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
