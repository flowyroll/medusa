.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1c494, %rax
nop
nop
nop
nop
sub %rbp, %rbp
mov $0x6162636465666768, %r8
movq %r8, %xmm3
movups %xmm3, (%rax)
nop
nop
nop
nop
nop
and $6969, %rax
lea addresses_A_ht+0x1ba74, %rdi
nop
nop
nop
dec %rbp
mov (%rdi), %r14w
nop
nop
nop
nop
and $41460, %rbp
lea addresses_UC_ht+0x16ea4, %rbx
nop
nop
mfence
mov (%rbx), %eax
cmp %rbx, %rbx
lea addresses_A_ht+0xedb4, %rsi
lea addresses_normal_ht+0x654, %rdi
nop
nop
nop
sub %r14, %r14
mov $31, %rcx
rep movsw
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x14874, %r8
nop
nop
nop
dec %rbx
mov (%r8), %ebp
nop
nop
nop
nop
xor $11851, %r8
lea addresses_normal_ht+0x1d984, %rsi
nop
nop
nop
nop
nop
sub $18879, %r8
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbx
nop
nop
add $6686, %rbx
lea addresses_UC_ht+0xd064, %rsi
lea addresses_WC_ht+0x3a74, %rdi
clflush (%rsi)
sub %rbp, %rbp
mov $105, %rcx
rep movsl
nop
nop
nop
inc %rsi
lea addresses_D_ht+0x1adf4, %rcx
nop
nop
nop
xor %r14, %r14
vmovups (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r8
nop
nop
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0x13274, %rsi
lea addresses_A_ht+0x12db4, %rdi
nop
nop
nop
cmp $19585, %rbp
mov $36, %rcx
rep movsw
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x16e74, %rsi
lea addresses_normal_ht+0x4578, %rdi
nop
nop
xor %rbp, %rbp
mov $94, %rcx
rep movsw
nop
nop
add $23415, %rdi
lea addresses_UC_ht+0x109cc, %rcx
nop
nop
and $63316, %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0xaa74, %rbx
nop
nop
nop
nop
nop
sub %r8, %r8
mov $0x6162636465666768, %r14
movq %r14, %xmm0
and $0xffffffffffffffc0, %rbx
movaps %xmm0, (%rbx)
nop
nop
nop
add $32707, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r8
push %rcx

// Faulty Load
lea addresses_US+0x1da74, %r8
add %r15, %r15
mov (%r8), %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 7}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'00': 1}
00
*/
