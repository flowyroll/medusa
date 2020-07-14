.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rbp
push %rcx
push %rdx
push %rsi
lea addresses_D_ht+0x85a8, %rsi
nop
sub %rcx, %rcx
vmovups (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r8
nop
nop
xor $65476, %rbp
lea addresses_WT_ht+0x1d328, %r10
nop
lfence
and $0xffffffffffffffc0, %r10
vmovntdqa (%r10), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r13
nop
nop
nop
nop
nop
add $30272, %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rax
push %rbp
push %rcx
push %rdi

// Store
lea addresses_US+0x4e28, %rdi
nop
nop
nop
nop
nop
and $50061, %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm1
vmovaps %ymm1, (%rdi)
nop
nop
nop
nop
nop
cmp $33025, %rbp

// Store
lea addresses_WC+0x14d60, %rcx
nop
nop
cmp $63902, %r10
movw $0x5152, (%rcx)
nop
nop
add %r11, %r11

// Store
mov $0xb28, %r10
cmp $3237, %rax
mov $0x5152535455565758, %r13
movq %r13, (%r10)
nop
nop
nop
xor $9531, %r10

// Store
lea addresses_normal+0x728, %rax
nop
nop
nop
nop
and %rbp, %rbp
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
add %rbp, %rbp

// Store
lea addresses_PSE+0x1ee8, %r11
nop
add $25874, %rbp
movw $0x5152, (%r11)
nop
xor $56900, %rbp

// Store
lea addresses_RW+0x11588, %rdi
nop
sub %rcx, %rcx
movw $0x5152, (%rdi)
nop
nop
nop
nop
dec %rcx

// Faulty Load
lea addresses_US+0x197a8, %r11
cmp $19289, %rdi
mov (%r11), %ecx
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_US', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_P', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_normal', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'00': 2}
00 00
*/
