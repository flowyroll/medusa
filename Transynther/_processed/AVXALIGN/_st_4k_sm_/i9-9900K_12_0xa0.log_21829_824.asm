.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x18ffa, %rsi
lea addresses_WT_ht+0x1a536, %rdi
nop
nop
lfence
mov $85, %rcx
rep movsl
add $62021, %rbp
lea addresses_normal_ht+0x1967a, %r10
clflush (%r10)
add %rcx, %rcx
mov (%r10), %r11w
nop
nop
inc %rsi
lea addresses_A_ht+0x4a3a, %rsi
lea addresses_WT_ht+0x3bc1, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and %rax, %rax
mov $76, %rcx
rep movsb
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x15ba0, %rdi
nop
add $58400, %rsi
movl $0x61626364, (%rdi)
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x17fbe, %r10
nop
nop
nop
nop
nop
xor $14417, %rdi
movb $0x61, (%r10)
sub $50540, %r10
lea addresses_UC_ht+0x8d3a, %rsi
lea addresses_normal_ht+0x5c3a, %rdi
nop
nop
nop
cmp $13957, %r10
mov $27, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x142b2, %rdi
nop
nop
nop
xor %rax, %rax
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
nop
nop
and $29196, %r11
lea addresses_WT_ht+0x4772, %rax
cmp %r11, %r11
movl $0x61626364, (%rax)
nop
nop
nop
cmp %rbp, %rbp
lea addresses_UC_ht+0xf23a, %rsi
lea addresses_WC_ht+0xf682, %rdi
nop
nop
add %r9, %r9
mov $40, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $44318, %r9
lea addresses_WT_ht+0x803a, %r11
nop
nop
nop
nop
nop
and %rax, %rax
movb (%r11), %cl
nop
nop
nop
nop
nop
dec %rbp
lea addresses_WT_ht+0x14e3a, %rcx
nop
nop
and %rsi, %rsi
movb $0x61, (%rcx)
nop
nop
nop
nop
xor $31063, %r9
lea addresses_D_ht+0x1a25f, %r9
nop
nop
nop
nop
sub $59232, %rdi
mov (%r9), %eax
nop
cmp $36441, %r10
lea addresses_WC_ht+0x935a, %rsi
lea addresses_WC_ht+0x523a, %rdi
nop
nop
nop
nop
nop
and $52469, %rax
mov $64, %rcx
rep movsw
nop
nop
nop
cmp $44692, %r9
lea addresses_normal_ht+0xa73a, %rbp
nop
nop
nop
nop
cmp $16998, %rax
movb (%rbp), %r9b
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x98ca, %r10
nop
and $30640, %r11
movups (%r10), %xmm2
vpextrq $1, %xmm2, %rdi
nop
nop
xor $12886, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdx

// Store
mov $0xe3a, %rbx
nop
nop
nop
dec %r15
movb $0x51, (%rbx)
add %rcx, %rcx

// Store
lea addresses_UC+0xa0ba, %rdx
sub %r13, %r13
mov $0x5152535455565758, %rbx
movq %rbx, (%rdx)
nop
nop
nop
and $3138, %rcx

// Load
lea addresses_RW+0x51ba, %rbx
nop
nop
nop
nop
nop
add $40199, %r15
mov (%rbx), %r13w
nop
dec %rax

// Store
lea addresses_RW+0x185aa, %rdx
nop
nop
nop
nop
add %r13, %r13
mov $0x5152535455565758, %r12
movq %r12, (%rdx)
nop
nop
nop
nop
dec %r13

// Load
lea addresses_A+0xf23a, %rax
xor $58338, %r13
mov (%rax), %rdx
nop
sub $63336, %r13

// Store
lea addresses_US+0x223a, %r13
sub $58867, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm3
movups %xmm3, (%r13)
nop
nop
nop
nop
sub %r15, %r15

// Store
mov $0x1121b9000000023a, %r13
add $2008, %rax
mov $0x5152535455565758, %r12
movq %r12, %xmm0
vmovups %ymm0, (%r13)
nop
nop
xor %rcx, %rcx

// Store
lea addresses_D+0x6c3a, %r12
nop
nop
nop
nop
nop
add %rdx, %rdx
movb $0x51, (%r12)
nop
nop
and $13078, %r13

// Store
lea addresses_WC+0x1e4fe, %rbx
nop
nop
inc %rax
movl $0x51525354, (%rbx)

// Exception!!!
nop
nop
mov (0), %rax
nop
nop
xor %rbx, %rbx

// Store
lea addresses_US+0xa4ba, %rdx
inc %r15
movb $0x51, (%rdx)
nop
nop
cmp %rcx, %rcx

// Load
lea addresses_D+0x124ba, %rax
nop
xor %rbx, %rbx
mov (%rax), %r12w
nop
nop
nop
nop
nop
inc %rdx

// Faulty Load
lea addresses_US+0x223a, %r13
nop
nop
nop
sub $35680, %rdx
mov (%r13), %rax
lea oracles, %r15
and $0xff, %rax
shlq $12, %rax
mov (%r15,%rax,1), %rax
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_P', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}}
{'src': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_US', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': True, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': True, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': True, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 8, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
