.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x23b6, %r14
nop
nop
nop
nop
nop
sub $13628, %r10
mov $0x6162636465666768, %r12
movq %r12, %xmm0
and $0xffffffffffffffc0, %r14
movntdq %xmm0, (%r14)
cmp $41463, %r11
lea addresses_WC_ht+0x16be8, %r9
clflush (%r9)
sub $9188, %rax
mov $0x6162636465666768, %rbp
movq %rbp, (%r9)
nop
nop
nop
nop
add %r10, %r10
lea addresses_normal_ht+0x171e8, %rsi
lea addresses_D_ht+0x1e568, %rdi
nop
nop
nop
dec %r9
mov $119, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0xfde8, %r10
inc %r11
movl $0x61626364, (%r10)
sub $10176, %rdi
lea addresses_A_ht+0x1de12, %r11
nop
nop
nop
and %rcx, %rcx
movl $0x61626364, (%r11)
nop
nop
nop
nop
add $14826, %rax
lea addresses_UC_ht+0xbdd0, %rdi
clflush (%rdi)
nop
nop
xor %rsi, %rsi
movl $0x61626364, (%rdi)
add $27482, %rbp
lea addresses_A_ht+0x177c0, %rdi
add $32724, %r11
vmovups (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r9
nop
nop
and %rax, %rax
lea addresses_A_ht+0x1e808, %r11
nop
nop
nop
nop
nop
dec %rsi
and $0xffffffffffffffc0, %r11
vmovntdqa (%r11), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x4932, %r12
nop
nop
nop
nop
cmp %rbp, %rbp
movb $0x61, (%r12)
nop
xor $31006, %r9
lea addresses_UC_ht+0x5508, %rsi
lea addresses_UC_ht+0x1da75, %rdi
nop
nop
dec %rax
mov $55, %rcx
rep movsw
nop
xor %r12, %r12
lea addresses_WT_ht+0x2de8, %rbp
nop
nop
nop
nop
and $52051, %r10
mov (%rbp), %r14w
nop
nop
xor %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x1d878, %rsi
nop
nop
nop
cmp $14184, %r8
mov $0x5152535455565758, %rdi
movq %rdi, (%rsi)
nop
and %r15, %r15

// Store
lea addresses_UC+0x79e8, %rbp
nop
and %r11, %r11
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
movups %xmm5, (%rbp)
nop
nop
nop
nop
cmp %rdi, %rdi

// REPMOV
lea addresses_A+0xe088, %rsi
lea addresses_UC+0x1d578, %rdi
nop
nop
nop
nop
nop
inc %r15
mov $21, %rcx
rep movsq
nop
nop
and %rcx, %rcx

// Store
lea addresses_WT+0x138b8, %rcx
nop
nop
cmp %r15, %r15
movw $0x5152, (%rcx)
sub %rcx, %rcx

// Load
lea addresses_D+0xf9e8, %r15
cmp $9403, %rdi
mov (%r15), %r11d
xor $54477, %rdi

// REPMOV
lea addresses_D+0x11fe8, %rsi
lea addresses_UC+0x79e8, %rdi
nop
nop
inc %rbx
mov $39, %rcx
rep movsb
sub %r8, %r8

// Load
lea addresses_D+0x152a8, %rbp
nop
add $20072, %r15
mov (%rbp), %r11w
cmp %r15, %r15

// Load
lea addresses_PSE+0x2727, %rdi
nop
and %r11, %r11
mov (%rdi), %rsi
nop
nop
nop
nop
nop
and %rsi, %rsi

// Faulty Load
lea addresses_UC+0x79e8, %rbp
clflush (%rbp)
nop
sub %rcx, %rcx
vmovups (%rbp), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 10}}
{'dst': {'same': True, 'congruent': 0, 'type': 'addresses_UC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
