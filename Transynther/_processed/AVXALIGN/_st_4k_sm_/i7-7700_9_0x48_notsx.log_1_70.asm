.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x4132, %rsi
nop
nop
and $60995, %r11
mov $0x6162636465666768, %r12
movq %r12, (%rsi)
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_normal_ht+0x65c2, %r11
cmp $32213, %r15
movb (%r11), %bl
nop
nop
nop
mfence
lea addresses_WT_ht+0xbcdf, %rsi
nop
nop
add %r15, %r15
movl $0x61626364, (%rsi)
nop
nop
xor $9786, %r12
lea addresses_WC_ht+0x1deca, %rcx
nop
nop
and $64511, %rdi
mov (%rcx), %ebx
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0xf932, %rsi
lea addresses_UC_ht+0x15a42, %rdi
add %rbp, %rbp
mov $62, %rcx
rep movsw
nop
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0x1ad32, %rsi
lea addresses_WC_ht+0x9f20, %rdi
nop
inc %rbp
mov $71, %rcx
rep movsb
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x1d32, %rsi
lea addresses_normal_ht+0xdd23, %rdi
nop
sub %r15, %r15
mov $113, %rcx
rep movsb
sub $34714, %r15
lea addresses_normal_ht+0x114f2, %rsi
lea addresses_WT_ht+0x27b2, %rdi
nop
nop
nop
add $40851, %rbx
mov $85, %rcx
rep movsb
nop
and %rbx, %rbx
lea addresses_normal_ht+0x10b7c, %rbx
nop
nop
nop
xor %rcx, %rcx
movups (%rbx), %xmm6
vpextrq $1, %xmm6, %r11
cmp $26078, %rcx
lea addresses_A_ht+0x5d94, %rsi
lea addresses_normal_ht+0x1e532, %rdi
nop
nop
nop
nop
nop
sub %r12, %r12
mov $24, %rcx
rep movsl
nop
nop
nop
nop
cmp $61458, %r12
lea addresses_UC_ht+0xe932, %rsi
lea addresses_WC_ht+0x1c5f3, %rdi
nop
lfence
mov $20, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $54978, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %rax
push %rbx
push %rcx

// Store
lea addresses_WC+0x17d72, %rbx
clflush (%rbx)
nop
cmp $62130, %rax
movl $0x51525354, (%rbx)
nop
nop
nop
xor $20123, %rbx

// Load
lea addresses_WC+0x30b2, %r14
nop
nop
nop
nop
nop
cmp $33053, %r12
vmovaps (%r14), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rax
nop
nop
dec %r12

// Store
lea addresses_UC+0x9d32, %rcx
nop
cmp %r15, %r15
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
dec %r12

// Store
mov $0x532, %r15
nop
cmp $32253, %r12
mov $0x5152535455565758, %rbx
movq %rbx, (%r15)
nop
nop
nop
inc %r12

// Store
lea addresses_US+0x1a132, %r15
nop
nop
nop
nop
and $30246, %r14
movl $0x51525354, (%r15)
nop
nop
nop
dec %rbx

// Store
lea addresses_UC+0x2132, %r12
cmp %rbx, %rbx
movw $0x5152, (%r12)
nop
nop
add %r14, %r14

// Faulty Load
lea addresses_US+0x1a132, %rax
nop
nop
and %rcx, %rcx
vmovntdqa (%rax), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r14
lea oracles, %r12
and $0xff, %r14
shlq $12, %r14
mov (%r12,%r14,1), %r14
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_WC', 'congruent': 6}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_P', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'52': 1}
52
*/
