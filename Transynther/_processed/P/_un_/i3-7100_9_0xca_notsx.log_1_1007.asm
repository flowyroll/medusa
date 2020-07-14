.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xa73f, %rax
nop
nop
nop
nop
and %r8, %r8
mov (%rax), %r13d
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_D_ht+0x1597f, %rdx
nop
nop
nop
nop
nop
dec %r8
mov $0x6162636465666768, %r11
movq %r11, %xmm3
and $0xffffffffffffffc0, %rdx
vmovntdq %ymm3, (%rdx)
nop
nop
nop
add $33386, %r8
lea addresses_UC_ht+0x193f, %rsi
lea addresses_WC_ht+0xb2bf, %rdi
nop
nop
nop
nop
nop
cmp $37654, %rdx
mov $100, %rcx
rep movsq
nop
cmp $57544, %rsi
lea addresses_UC_ht+0xe119, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov (%rdi), %eax
dec %rdi
lea addresses_normal_ht+0x12f3f, %r8
nop
nop
nop
and %r13, %r13
and $0xffffffffffffffc0, %r8
vmovntdqa (%r8), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
nop
nop
nop
and $10449, %rcx
lea addresses_A_ht+0x1211f, %rdx
nop
nop
nop
nop
nop
and %rsi, %rsi
movb (%rdx), %r11b
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x1b70c, %rax
nop
nop
nop
nop
nop
add $60769, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm1
movups %xmm1, (%rax)
nop
nop
nop
nop
nop
sub $13163, %r11
lea addresses_normal_ht+0xb5f3, %r13
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r13)
nop
nop
xor $33861, %rsi
lea addresses_D_ht+0x1a8ef, %r13
nop
nop
nop
nop
nop
xor $19759, %r9
movb $0x61, (%r13)
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0xff3f, %rdx
clflush (%rdx)
nop
nop
nop
nop
and $12897, %rdi
movb (%rdx), %r13b
nop
nop
nop
nop
dec %r8
lea addresses_normal_ht+0x1db3f, %r8
nop
nop
nop
nop
sub %r13, %r13
movups (%r8), %xmm2
vpextrq $0, %xmm2, %r11
xor %r11, %r11
lea addresses_normal_ht+0x2b3f, %rdx
nop
and %rsi, %rsi
mov (%rdx), %r9
nop
nop
nop
nop
sub %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rax
push %rbx

// Faulty Load
mov $0x73f, %r15
nop
nop
sub $36285, %r10
mov (%r15), %rax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': True, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 2, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'e0': 1}
e0
*/
