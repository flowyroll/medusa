.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xef76, %rdx
sub %rbx, %rbx
movl $0x61626364, (%rdx)
nop
nop
nop
nop
nop
cmp $29872, %rcx
lea addresses_A_ht+0x197d6, %r15
nop
nop
nop
nop
inc %rbx
and $0xffffffffffffffc0, %r15
vmovntdqa (%r15), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
nop
nop
nop
and $4977, %r15
lea addresses_A_ht+0x1904a, %r15
nop
nop
add $59648, %r8
movb (%r15), %cl
nop
nop
and $2145, %rsi
lea addresses_UC_ht+0x12645, %rbp
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rbp)
nop
nop
xor %rbx, %rbx
lea addresses_WT_ht+0x114d6, %r15
nop
nop
nop
and $48787, %rdx
and $0xffffffffffffffc0, %r15
movntdqa (%r15), %xmm0
vpextrq $1, %xmm0, %rbp
nop
nop
cmp %r8, %r8
lea addresses_WC_ht+0x1af06, %r15
xor %rbp, %rbp
mov (%r15), %rcx
nop
nop
and $9495, %rbx
lea addresses_WC_ht+0x2356, %rdx
nop
nop
xor $31265, %r8
vmovups (%rdx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r15
nop
nop
nop
nop
nop
xor $64077, %rdx
lea addresses_D_ht+0xb168, %r8
add %rbp, %rbp
mov (%r8), %esi
dec %rdx
lea addresses_A_ht+0x72ef, %rsi
lea addresses_WT_ht+0x89d6, %rdi
clflush (%rdi)
nop
nop
xor %rbp, %rbp
mov $94, %rcx
rep movsb
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x169d6, %rdi
nop
nop
nop
nop
nop
sub $63528, %rbp
movw $0x6162, (%rdi)
add $47583, %rdi
lea addresses_WC_ht+0x81ae, %rsi
lea addresses_normal_ht+0x106d2, %rdi
nop
add %r8, %r8
mov $78, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $9509, %r8
lea addresses_UC_ht+0x81d6, %rdx
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%rdx)
nop
nop
nop
nop
nop
xor $15406, %rbx
lea addresses_D_ht+0x39de, %rsi
lea addresses_normal_ht+0x1ae16, %rdi
and $2774, %rbp
mov $0, %rcx
rep movsb
nop
nop
nop
dec %rbx
lea addresses_WC_ht+0x189d6, %rcx
nop
nop
nop
nop
sub %rdx, %rdx
mov (%rcx), %rdi
nop
nop
nop
xor $24019, %rdx
lea addresses_UC_ht+0x18856, %rsi
nop
nop
inc %rdi
mov (%rsi), %r15w
nop
nop
nop
nop
cmp $34000, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rbp
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x11bd6, %rsi
nop
sub %r9, %r9
movb $0x51, (%rsi)
nop
nop
nop
nop
and $33200, %rbp

// Load
lea addresses_A+0x175d6, %rbp
nop
and $40386, %rsi
mov (%rbp), %rdx
nop
nop
nop
nop
nop
inc %rbp

// Load
lea addresses_D+0xc644, %rbp
dec %r9
vmovups (%rbp), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
inc %rdx

// Store
mov $0x5ddeba00000007a2, %rsi
xor %rdi, %rdi
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
cmp %rsi, %rsi

// Load
lea addresses_RW+0x17fd6, %rdx
nop
nop
nop
nop
xor $64431, %r15
mov (%rdx), %di

// Exception!!!
nop
mov (0), %rdi
nop
nop
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_WT+0x1ae56, %r9
nop
nop
add %r11, %r11
movb $0x51, (%r9)
cmp %r9, %r9

// Store
lea addresses_US+0x171d6, %rbp
nop
nop
inc %r11
mov $0x5152535455565758, %rdi
movq %rdi, (%rbp)
nop
nop
add %rdi, %rdi

// Store
mov $0x1d6, %rdi
clflush (%rdi)
nop
xor %r11, %r11
movw $0x5152, (%rdi)
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_WT+0x91d6, %r11
sub $1970, %rsi
movb $0x51, (%r11)
and %rsi, %rsi

// Faulty Load
mov $0x267f4f00000001d6, %rbp
nop
xor %rdx, %rdx
mov (%rbp), %r9w
lea oracles, %rbp
and $0xff, %r9
shlq $12, %r9
mov (%rbp,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 5, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'51': 6, '52': 37}
51 52 52 52 52 52 52 52 51 52 52 52 52 52 52 52 52 52 52 51 52 51 51 52 52 52 52 52 52 52 52 52 52 51 52 52 52 52 52 52 52 52 52
*/
