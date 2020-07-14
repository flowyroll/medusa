.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x111c1, %rsi
lea addresses_normal_ht+0x14581, %rdi
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $10, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $57156, %rbx
lea addresses_UC_ht+0xed71, %r10
cmp $33257, %rdi
movw $0x6162, (%r10)
nop
nop
nop
sub $5263, %rcx
lea addresses_UC_ht+0xfe41, %rsi
lea addresses_A_ht+0x3641, %rdi
nop
nop
nop
cmp $43645, %rbx
mov $65, %rcx
rep movsq
add $17782, %rcx
lea addresses_D_ht+0x4941, %rbx
cmp %r11, %r11
movb $0x61, (%rbx)
cmp $22911, %r14
lea addresses_A_ht+0x3f41, %rbx
nop
nop
nop
nop
add $35493, %rdi
movl $0x61626364, (%rbx)
nop
nop
xor $12654, %r11
lea addresses_A_ht+0x12441, %r11
nop
sub $55129, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%r11)
nop
nop
nop
xor %r14, %r14
lea addresses_normal_ht+0x11f89, %rcx
nop
nop
nop
xor %r14, %r14
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbx
nop
and %rdi, %rdi
lea addresses_D_ht+0x18141, %r14
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%r14)
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x4c41, %rdi
nop
nop
nop
nop
nop
add $54191, %r14
mov (%rdi), %r10w
nop
nop
nop
nop
nop
xor $64963, %rdi
lea addresses_D_ht+0x19141, %rsi
lea addresses_WC_ht+0x659, %rdi
nop
xor $36487, %r9
mov $59, %rcx
rep movsw
nop
nop
nop
sub %r14, %r14
lea addresses_D_ht+0x4c31, %rcx
nop
nop
nop
nop
nop
xor %rbx, %rbx
movl $0x61626364, (%rcx)
nop
sub $23604, %rbx
lea addresses_D_ht+0x14a89, %rsi
lea addresses_normal_ht+0x18a41, %rdi
nop
nop
nop
nop
nop
sub %r11, %r11
mov $109, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $26749, %rsi
lea addresses_normal_ht+0x114e3, %r10
nop
nop
nop
nop
xor %rdi, %rdi
movups (%r10), %xmm2
vpextrq $1, %xmm2, %r9
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0xcc41, %rbx
nop
xor $33336, %r10
movw $0x6162, (%rbx)
nop
nop
nop
add $27065, %rsi
lea addresses_UC_ht+0x3349, %r9
nop
nop
nop
inc %rsi
movups (%r9), %xmm5
vpextrq $0, %xmm5, %r14
nop
nop
nop
nop
nop
dec %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r9
push %rax
push %rbp
push %rbx

// Load
lea addresses_PSE+0x17a41, %r12
nop
nop
nop
add $49031, %rax
mov (%r12), %r9
nop
cmp %r12, %r12

// Store
lea addresses_D+0xee41, %r11
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %r9
movq %r9, %xmm4
vmovups %ymm4, (%r11)
nop
nop
nop
nop
dec %rax

// Load
lea addresses_US+0x3141, %r13
nop
nop
nop
nop
inc %r12
movaps (%r13), %xmm7
vpextrq $0, %xmm7, %rbp
nop
nop
nop
and %r12, %r12

// Store
lea addresses_RW+0x16f11, %r9
sub %r12, %r12
mov $0x5152535455565758, %r11
movq %r11, %xmm5
vmovups %ymm5, (%r9)
dec %r12

// Store
lea addresses_D+0xbe65, %rbx
nop
nop
nop
nop
add %r12, %r12
mov $0x5152535455565758, %r11
movq %r11, (%rbx)
nop
nop
nop
dec %r12

// Store
lea addresses_US+0x1a241, %r9
nop
nop
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, (%r9)
nop
nop
nop
and $50180, %r12

// Faulty Load
lea addresses_D+0xee41, %rax
nop
nop
nop
nop
nop
sub $23273, %r13
movb (%rax), %r11b
lea oracles, %rax
and $0xff, %r11
shlq $12, %r11
mov (%rax,%r11,1), %r11
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 10}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_US', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_D', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 10}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 3}}
{'58': 20}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
