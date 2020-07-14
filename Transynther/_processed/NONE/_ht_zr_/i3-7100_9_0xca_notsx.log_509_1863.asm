.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1b029, %rsi
lea addresses_normal_ht+0x172f1, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor $3847, %r10
mov $4, %rcx
rep movsb
nop
nop
nop
nop
xor $2529, %rsi
lea addresses_UC_ht+0x12011, %rsi
lea addresses_UC_ht+0x9af1, %rdi
clflush (%rdi)
nop
nop
nop
add %r11, %r11
mov $112, %rcx
rep movsb
nop
nop
nop
nop
sub $21149, %r11
lea addresses_D_ht+0x19671, %rdx
nop
nop
nop
nop
nop
inc %r13
movb (%rdx), %r10b
xor $10570, %rdx
lea addresses_WT_ht+0x17d71, %rsi
lea addresses_WC_ht+0x198f1, %rdi
sub %rbx, %rbx
mov $96, %rcx
rep movsb
nop
nop
nop
nop
xor $13290, %r13
lea addresses_WT_ht+0xb37f, %r13
nop
nop
nop
nop
nop
xor $11295, %r10
and $0xffffffffffffffc0, %r13
vmovaps (%r13), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbx
nop
nop
nop
add $3374, %r10
lea addresses_UC_ht+0xeabf, %rsi
lea addresses_normal_ht+0x120f1, %rdi
xor $57064, %rbx
mov $67, %rcx
rep movsw
nop
nop
cmp $55356, %rsi
lea addresses_D_ht+0x16ef1, %r10
nop
nop
nop
nop
cmp $47079, %rsi
movl $0x61626364, (%r10)
nop
sub $27769, %rdx
lea addresses_A_ht+0x7e31, %rsi
lea addresses_D_ht+0x9f71, %rdi
nop
inc %r11
mov $94, %rcx
rep movsb
nop
nop
nop
add $5601, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rax
push %rbx
push %rdi
push %rdx

// Store
lea addresses_RW+0x14049, %rdi
cmp %r11, %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
nop
and %r11, %r11

// Store
mov $0xba5, %r11
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
vmovaps %ymm6, (%r11)
nop
nop
nop
inc %r12

// Store
lea addresses_US+0x6331, %rbx
clflush (%rbx)
xor $1345, %rdi
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
add $23728, %r11

// Faulty Load
lea addresses_A+0x4ef1, %rdi
nop
sub $54777, %rdx
vmovups (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r11
lea oracles, %rax
and $0xff, %r11
shlq $12, %r11
mov (%rax,%r11,1), %r11
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_RW', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_P', 'size': 32, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'00': 226, '49': 283}
49 49 49 00 49 00 49 00 00 49 49 00 49 49 00 49 00 00 49 00 00 00 49 00 00 00 49 00 00 00 49 49 49 00 49 00 49 49 49 49 49 00 00 00 49 49 49 00 49 49 49 49 49 00 49 49 49 49 49 00 49 00 00 00 49 49 00 00 00 49 00 00 49 49 49 00 00 49 00 00 00 00 00 00 00 00 00 49 49 49 49 00 49 00 49 00 00 49 00 00 00 00 49 49 00 00 49 00 00 00 49 49 00 49 49 00 00 00 00 00 49 00 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 00 00 00 00 49 00 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 00 00 49 00 49 49 00 49 49 00 00 49 49 49 00 00 00 00 49 49 00 49 49 49 00 49 00 00 49 00 00 49 49 00 00 49 00 00 49 00 00 49 00 00 49 49 00 00 49 49 00 49 00 49 49 00 00 00 00 00 00 00 00 49 49 49 00 00 49 49 49 49 49 49 00 49 00 49 00 49 00 49 49 49 49 49 49 49 49 00 00 49 49 49 49 49 49 00 49 49 49 00 49 00 00 49 49 49 49 49 49 49 00 49 00 49 00 49 49 00 49 49 00 00 00 00 00 49 00 00 49 49 49 49 00 49 49 49 00 49 49 00 00 00 00 00 00 00 49 00 00 00 49 00 49 49 49 49 00 00 49 00 00 49 00 49 00 49 49 49 00 00 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 00 00 49 49 49 00 49 00 00 49 00 49 00 00 49 00 00 00 00 00 49 00 00 49 00 49 00 49 49 00 49 00 49 00 00 00 00 49 00 49 49 00 49 00 00 00 00 00 00 00 49 00 49 00 00 49 49 00 00 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 00 49 00 49 00 49 49 49 49 49 49 49 49 49 49 00 00 49 49 00 49 00 00 49 00 00 49 00 49 49 00 49 49 49 00 00 00 00 49 00 00 00 00 49 00 49 00 00 00 49 49 00 00 49 49 00 49 49 00 00 49 49 49 00 00 00 00 49 49 00 49 00 00 49 49 49 49 49 49 49 49
*/
