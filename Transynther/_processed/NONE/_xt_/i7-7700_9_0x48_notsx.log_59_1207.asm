.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xec12, %rcx
nop
nop
nop
nop
nop
dec %rbx
vmovups (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rax
nop
nop
nop
nop
and %rax, %rax
lea addresses_WT_ht+0x2a6d, %rsi
clflush (%rsi)
nop
nop
nop
xor %rbx, %rbx
movl $0x61626364, (%rsi)
nop
nop
nop
nop
add %r8, %r8
lea addresses_WT_ht+0x6b83, %rsi
lea addresses_WT_ht+0x16943, %rdi
cmp %rax, %rax
mov $45, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $40114, %rbx
lea addresses_UC_ht+0x14ae5, %rax
nop
nop
nop
cmp $39119, %r9
movl $0x61626364, (%rax)
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0xb1e5, %r9
nop
nop
nop
nop
and %rax, %rax
and $0xffffffffffffffc0, %r9
movaps (%r9), %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
sub $24963, %rsi
lea addresses_D_ht+0x19865, %rcx
nop
cmp %rbx, %rbx
and $0xffffffffffffffc0, %rcx
vmovntdqa (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
nop
add %r9, %r9
lea addresses_WC_ht+0x12465, %r9
nop
nop
nop
add $9073, %rdi
mov (%r9), %rbx
nop
add $19915, %r9
lea addresses_WT_ht+0xaae5, %rdi
nop
nop
nop
sub $42986, %rax
movb $0x61, (%rdi)
add %rax, %rax
lea addresses_WT_ht+0x43c5, %rsi
nop
nop
xor %rdi, %rdi
movl $0x61626364, (%rsi)
nop
nop
xor %rsi, %rsi
lea addresses_A_ht+0x1c7f5, %rsi
lea addresses_WC_ht+0x172e5, %rdi
nop
nop
nop
nop
xor %r10, %r10
mov $8, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rdi
lea addresses_WT_ht+0xaae5, %rsi
nop
nop
and %r9, %r9
movb $0x61, (%rsi)
sub %rsi, %rsi
lea addresses_A_ht+0x167e5, %rax
nop
nop
nop
nop
nop
xor $14119, %rdi
mov (%rax), %ebx
and $13975, %rsi
lea addresses_normal_ht+0x4ecd, %r9
sub %rax, %rax
movb $0x61, (%r9)
nop
nop
nop
cmp %r9, %r9
lea addresses_A_ht+0x155b5, %r9
nop
nop
nop
nop
nop
cmp $8062, %r8
movl $0x61626364, (%r9)
nop
nop
sub $41939, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r8
push %r9
push %rbx

// Store
mov $0x7eda490000000685, %r11
nop
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovups %ymm4, (%r11)
nop
nop
nop
and %r8, %r8

// Store
lea addresses_RW+0x3c09, %r12
and $25730, %rbx
movl $0x51525354, (%r12)
nop
nop
nop
nop
nop
dec %r12

// Store
lea addresses_WT+0xa2a5, %r13
nop
nop
nop
nop
nop
add $33937, %r12
movl $0x51525354, (%r13)
nop
nop
nop
nop
nop
inc %rbx

// Faulty Load
lea addresses_normal+0x16ae5, %r8
nop
nop
nop
nop
nop
cmp $13384, %r12
mov (%r8), %r13
lea oracles, %r8
and $0xff, %r13
shlq $12, %r13
mov (%r8,%r13,1), %r13
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 5}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 2}, 'OP': 'STOR'}
{'34': 59}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
