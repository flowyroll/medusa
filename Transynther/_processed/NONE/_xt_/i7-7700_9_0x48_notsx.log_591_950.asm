.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xc4aa, %rsi
lea addresses_UC_ht+0x5b2a, %rdi
nop
nop
nop
xor %r14, %r14
mov $44, %rcx
rep movsq
nop
nop
nop
nop
xor %rax, %rax
lea addresses_normal_ht+0x1d48a, %rcx
nop
sub %rbp, %rbp
and $0xffffffffffffffc0, %rcx
vmovntdqa (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_D_ht+0xd48a, %rsi
lea addresses_normal_ht+0x96ea, %rdi
nop
nop
nop
nop
inc %rax
mov $20, %rcx
rep movsb
xor %rdi, %rdi
lea addresses_normal_ht+0x7c4a, %rax
cmp $54720, %rcx
vmovups (%rax), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r14
nop
nop
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0x123ea, %rax
and $59432, %r11
mov (%rax), %si
nop
add $27756, %rbp
lea addresses_normal_ht+0xf4d2, %rsi
lea addresses_A_ht+0x1c66a, %rdi
nop
nop
xor %rdx, %rdx
mov $16, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $65035, %rdx
lea addresses_UC_ht+0xeb2a, %rcx
clflush (%rcx)
cmp %rdi, %rdi
mov (%rcx), %rdx
nop
nop
nop
nop
xor %r14, %r14
lea addresses_UC_ht+0x1cc17, %rdx
nop
nop
nop
nop
nop
sub $15320, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_D_ht+0x1ec0a, %rsi
lea addresses_A_ht+0x1e69a, %rdi
nop
nop
nop
nop
nop
cmp $24985, %rax
mov $98, %rcx
rep movsw
nop
nop
xor $24903, %rax
lea addresses_A_ht+0x10e3a, %r14
nop
nop
nop
cmp $48739, %r11
mov (%r14), %di
nop
xor $29620, %rdx
lea addresses_normal_ht+0x1e22a, %rcx
nop
nop
nop
xor $14922, %rdx
mov $0x6162636465666768, %r11
movq %r11, (%rcx)
nop
nop
add %rdx, %rdx
lea addresses_WT_ht+0x1932a, %rsi
lea addresses_D_ht+0x79ba, %rdi
nop
xor %r14, %r14
mov $20, %rcx
rep movsb
xor $38256, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rdx

// Store
lea addresses_PSE+0x1df2a, %r8
clflush (%r8)
add %rcx, %rcx
movb $0x51, (%r8)
nop
inc %r8

// Store
mov $0xde739000000022a, %r8
cmp $52040, %r13
mov $0x5152535455565758, %rdx
movq %rdx, (%r8)
nop
nop
add $48472, %rdi

// Store
lea addresses_WC+0x1192a, %r13
nop
nop
nop
nop
cmp $22099, %r15
movl $0x51525354, (%r13)
dec %r15

// Store
mov $0x4aa, %r15
nop
nop
nop
nop
cmp %r13, %r13
movb $0x51, (%r15)
nop
nop
nop
nop
nop
add %r8, %r8

// Faulty Load
lea addresses_PSE+0x15b2a, %r13
nop
nop
nop
nop
nop
add %rdx, %rdx
movups (%r13), %xmm2
vpextrq $1, %xmm2, %r14
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_P', 'congruent': 7}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 4}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'33': 591}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
