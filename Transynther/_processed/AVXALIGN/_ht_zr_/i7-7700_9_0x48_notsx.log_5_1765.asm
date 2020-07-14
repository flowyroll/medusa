.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xefc3, %rax
nop
nop
nop
nop
nop
inc %rbp
movl $0x61626364, (%rax)
add $58532, %r14
lea addresses_WC_ht+0x8697, %r12
nop
nop
nop
nop
nop
xor %rax, %rax
movb $0x61, (%r12)
nop
nop
sub %r13, %r13
lea addresses_A_ht+0xb443, %r13
inc %rcx
and $0xffffffffffffffc0, %r13
vmovaps (%r13), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbp
nop
sub $3059, %r9
lea addresses_normal_ht+0x18cf3, %r14
nop
cmp %r13, %r13
movups (%r14), %xmm2
vpextrq $1, %xmm2, %rbp
nop
sub %rbp, %rbp
lea addresses_D_ht+0x17240, %r9
nop
nop
nop
nop
add $2533, %r13
movups (%r9), %xmm1
vpextrq $0, %xmm1, %r14
nop
xor $51405, %rcx
lea addresses_WC_ht+0xd443, %rax
nop
nop
nop
nop
nop
sub $47220, %r12
mov $0x6162636465666768, %r13
movq %r13, (%rax)
nop
add %rcx, %rcx
lea addresses_WT_ht+0xd7c3, %r13
nop
nop
nop
and $39654, %rax
movl $0x61626364, (%r13)
nop
nop
sub $3902, %r12
lea addresses_UC_ht+0xa1c3, %rbp
dec %rax
mov (%rbp), %r13w
nop
nop
add $32498, %rbp
lea addresses_WC_ht+0x1b7c3, %rsi
lea addresses_UC_ht+0xf7c3, %rdi
nop
nop
inc %rbp
mov $15, %rcx
rep movsw
nop
nop
nop
nop
inc %r9
lea addresses_A_ht+0x1a0ab, %r13
cmp $13212, %rsi
vmovups (%r13), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbp
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x1282f, %rdi
nop
nop
nop
nop
xor %r12, %r12
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
sub $9314, %rax
lea addresses_A_ht+0xfc3, %rsi
nop
cmp $52885, %rbp
mov (%rsi), %ecx
add %r13, %r13
lea addresses_WC_ht+0xa5a3, %rsi
lea addresses_D_ht+0x19843, %rdi
nop
dec %rbp
mov $116, %rcx
rep movsl
nop
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0xdfc3, %r14
nop
nop
nop
nop
dec %rsi
mov $0x5152535455565758, %rcx
movq %rcx, (%r14)
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_A+0xa7a3, %rbx
nop
inc %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rbx)
nop
nop
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_UC+0x2e83, %rdi
nop
add $58698, %rbx
mov $0x5152535455565758, %r14
movq %r14, (%rdi)
nop
nop
cmp $12833, %r14

// Store
lea addresses_normal+0x180c3, %rsi
nop
nop
cmp $41818, %r14
mov $0x5152535455565758, %rdi
movq %rdi, (%rsi)
nop
nop
mfence

// Store
lea addresses_PSE+0x81c3, %r14
nop
nop
nop
cmp %rbx, %rbx
movb $0x51, (%r14)
nop
xor $14173, %rsi

// Store
lea addresses_A+0xfb43, %rcx
cmp %rbx, %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm1
vmovntdq %ymm1, (%rcx)
nop
cmp %rdi, %rdi

// Store
lea addresses_WT+0x1703, %r14
add $52711, %r13
mov $0x5152535455565758, %r12
movq %r12, (%r14)
nop
inc %r12

// Store
lea addresses_PSE+0x126c3, %rcx
nop
xor %rbx, %rbx
movl $0x51525354, (%rcx)
nop
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_WT+0x1ffc3, %r12
xor $47996, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
movups %xmm4, (%r12)
nop
nop
dec %rbx

// Faulty Load
lea addresses_RW+0x1b7c3, %r14
nop
nop
cmp %rsi, %rsi
vmovntdqa (%r14), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbx
lea oracles, %r13
and $0xff, %rbx
shlq $12, %rbx
mov (%r13,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_PSE', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'48': 4, '00': 1}
00 48 48 48 48
*/
