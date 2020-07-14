.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x32be, %r12
nop
nop
nop
nop
nop
xor $449, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r12)
nop
nop
add $5023, %rsi
lea addresses_WT_ht+0x14438, %r12
nop
nop
nop
inc %r13
mov (%r12), %si
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_WC_ht+0xea94, %r10
nop
nop
nop
nop
nop
and $15994, %r8
mov (%r10), %r12
and $2067, %r12
lea addresses_UC_ht+0x6b0a, %rsi
lea addresses_D_ht+0x7a26, %rdi
nop
nop
nop
nop
nop
inc %r8
mov $105, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_A_ht+0x12294, %r10
nop
nop
nop
inc %rsi
mov (%r10), %ecx
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_D_ht+0x6054, %rcx
nop
and $62422, %r15
movups (%rcx), %xmm5
vpextrq $1, %xmm5, %r12
nop
nop
nop
sub %r15, %r15
lea addresses_WC_ht+0x30f4, %r8
inc %rdi
mov (%r8), %r13d
nop
nop
nop
nop
nop
cmp $37185, %r8
lea addresses_UC_ht+0x1e850, %r12
nop
nop
nop
sub $3458, %r8
movb $0x61, (%r12)
nop
and %r10, %r10
lea addresses_normal_ht+0x11394, %r15
clflush (%r15)
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %r8
movq %r8, %xmm0
vmovups %ymm0, (%r15)
nop
nop
nop
sub $23225, %r15
lea addresses_UC_ht+0x1519c, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %r12, %r12
mov $0x6162636465666768, %r15
movq %r15, %xmm0
and $0xffffffffffffffc0, %rdi
movaps %xmm0, (%rdi)
nop
nop
nop
nop
xor %r15, %r15
lea addresses_UC_ht+0xe368, %rcx
nop
nop
nop
cmp %rsi, %rsi
mov (%rcx), %rdi
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x13b94, %r15
clflush (%r15)
nop
nop
nop
nop
nop
add $9783, %rsi
movb (%r15), %cl
nop
dec %r15
lea addresses_normal_ht+0x18ea4, %rsi
clflush (%rsi)
nop
and %r13, %r13
movups (%rsi), %xmm0
vpextrq $1, %xmm0, %r8
nop
nop
nop
nop
xor $60234, %rdi
lea addresses_WT_ht+0x6434, %rdi
nop
nop
nop
nop
xor $55733, %r8
movups (%rdi), %xmm4
vpextrq $1, %xmm4, %r13
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0xd294, %r8
sub %r15, %r15
mov (%r8), %r13
nop
nop
nop
and $7373, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %rax
push %rbp
push %rdi
push %rsi

// Load
lea addresses_WT+0x16054, %rbp
nop
nop
dec %r14
movups (%rbp), %xmm5
vpextrq $0, %xmm5, %rsi
nop
add $52351, %r10

// Store
mov $0x494, %r14
nop
nop
and $44128, %r13
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
xor %r13, %r13

// Store
mov $0x33aa20000000294, %rbp
add %r14, %r14
mov $0x5152535455565758, %r13
movq %r13, %xmm7
movups %xmm7, (%rbp)
nop
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_US+0x19c94, %rbp
cmp %r13, %r13
movb $0x51, (%rbp)
nop
and %rsi, %rsi

// Store
mov $0xc94, %rdi
nop
nop
add %rax, %rax
movl $0x51525354, (%rdi)

// Exception!!!
nop
nop
mov (0), %rsi
nop
nop
nop
xor $16878, %r14

// Store
mov $0x407e0d0000000794, %rsi
xor $18158, %rax
movl $0x51525354, (%rsi)
dec %r10

// Store
lea addresses_D+0x689c, %rdi
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
nop
nop
and $39109, %r14

// Faulty Load
mov $0x33aa20000000294, %rbp
clflush (%rbp)
nop
nop
nop
nop
inc %rdi
mov (%rbp), %r14w
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_P', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_P', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_NC', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 11}}
{'58': 20698, '00': 1131}
58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
