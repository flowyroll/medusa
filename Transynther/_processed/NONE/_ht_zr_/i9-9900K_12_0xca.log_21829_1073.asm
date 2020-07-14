.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x4b54, %rsi
lea addresses_UC_ht+0xe5b4, %rdi
nop
nop
nop
nop
sub %rax, %rax
mov $1, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_WC_ht+0x1a2d6, %r12
clflush (%r12)
nop
nop
cmp %rbx, %rbx
movb $0x61, (%r12)
nop
nop
nop
nop
nop
add $57767, %r9
lea addresses_WT_ht+0x1ea4c, %rcx
nop
nop
nop
nop
nop
and %rbx, %rbx
movl $0x61626364, (%rcx)
sub $31038, %rax
lea addresses_WC_ht+0xa0b4, %rsi
lea addresses_WC_ht+0x17db4, %rdi
nop
nop
nop
add $51888, %r9
mov $33, %rcx
rep movsq
nop
add $34115, %rax
lea addresses_WC_ht+0x9055, %r9
nop
nop
nop
nop
sub $44014, %rcx
movl $0x61626364, (%r9)
nop
nop
nop
nop
xor $44334, %rsi
lea addresses_WT_ht+0xb2b4, %r9
add $5859, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
and $0xffffffffffffffc0, %r9
vmovntdq %ymm3, (%r9)
nop
nop
sub $44127, %rcx
lea addresses_normal_ht+0x1c1b4, %rdi
nop
nop
nop
nop
nop
dec %rbx
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
sub $35754, %rdi
lea addresses_A_ht+0x9db4, %rbx
nop
nop
nop
add %rsi, %rsi
mov (%rbx), %rax
nop
add %r9, %r9
lea addresses_normal_ht+0x2146, %rsi
lea addresses_WT_ht+0x1c5b4, %rdi
dec %r15
mov $83, %rcx
rep movsw
nop
nop
nop
add %rax, %rax
lea addresses_UC_ht+0xbf34, %rax
clflush (%rax)
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm7
movups %xmm7, (%rax)
nop
nop
nop
and $49639, %rbx
lea addresses_UC_ht+0x179b4, %rax
clflush (%rax)
nop
nop
nop
nop
nop
and $8994, %r12
vmovups (%rax), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
cmp $15587, %rdi
lea addresses_WT_ht+0xfbb4, %rdi
nop
nop
nop
nop
nop
and %rax, %rax
mov $0x6162636465666768, %r15
movq %r15, %xmm3
movups %xmm3, (%rdi)
cmp $62637, %rsi
lea addresses_WC_ht+0x1f6, %r15
nop
nop
nop
nop
sub $13012, %rbx
movw $0x6162, (%r15)
nop
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0x184b4, %rsi
lea addresses_A_ht+0x4574, %rdi
nop
nop
nop
cmp %r12, %r12
mov $37, %rcx
rep movsb
nop
nop
nop
nop
nop
add $44578, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdx

// Store
lea addresses_WT+0x15b4, %r13
nop
nop
xor $54611, %rbx
mov $0x5152535455565758, %r10
movq %r10, %xmm0
movups %xmm0, (%r13)
nop
nop
cmp %rbx, %rbx

// Load
lea addresses_WC+0x1adb4, %r13
xor %r9, %r9
movups (%r13), %xmm6
vpextrq $0, %xmm6, %rbx
nop
add %r9, %r9

// Load
lea addresses_US+0x165b4, %r9
nop
dec %rbx
movups (%r9), %xmm0
vpextrq $0, %xmm0, %rcx
nop
nop
nop
nop
dec %rcx

// Store
mov $0x4cc, %rax
nop
nop
sub %r13, %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
vmovups %ymm5, (%rax)
nop
nop
nop
xor %r9, %r9

// Faulty Load
lea addresses_WC+0x1db4, %rbx
and $6480, %rax
vmovups (%rbx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': True, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': True, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 6}}
{'44': 14637, '47': 307, '48': 1836, '00': 5049}
44 44 44 44 44 44 44 44 44 44 44 44 44 44 48 44 47 44 44 44 44 44 44 00 44 44 44 00 00 44 44 44 48 44 44 44 00 48 44 44 44 44 48 44 44 00 44 44 44 00 00 44 44 48 44 44 00 48 44 44 44 00 44 44 44 44 00 44 44 00 44 44 47 44 44 44 44 48 44 44 44 44 44 00 00 48 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 00 00 00 00 44 44 00 00 44 00 44 44 00 48 44 44 00 44 44 44 00 44 44 44 00 00 44 00 48 44 44 00 00 44 00 00 44 44 00 00 00 00 44 44 00 44 44 00 00 44 00 48 44 44 00 00 44 00 44 44 00 00 44 00 48 44 00 44 44 00 48 44 00 44 44 00 44 44 44 44 44 44 44 00 00 44 00 48 44 44 44 00 48 44 44 44 44 00 00 44 00 00 44 44 44 00 44 44 00 44 44 00 00 44 00 00 44 44 44 44 44 44 44 44 00 00 48 44 48 44 44 44 00 44 44 47 44 44 44 44 44 44 47 44 44 00 44 44 44 44 48 44 44 44 00 00 44 44 44 00 00 44 00 44 44 00 44 44 48 44 44 44 44 00 44 44 00 00 44 00 44 44 44 00 48 44 44 44 44 00 00 44 00 00 44 44 00 00 44 00 48 44 44 44 00 44 44 00 44 48 44 44 44 44 44 00 44 44 44 00 48 44 44 44 44 44 00 00 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 00 00 44 44 00 00 44 00 48 44 47 44 44 48 44 44 44 44 44 00 48 44 44 44 44 00 00 44 00 44 44 44 00 44 44 47 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 00 44 44 44 00 00 44 44 44 44 44 00 48 44 44 00 48 44 00 00 44 44 44 44 44 44 44 44 44 44 48 44 44 44 00 48 44 44 44 44 44 44 44 44 44 44 00 00 44 00 00 44 44 00 00 48 44 44 48 44 44 48 44 44 44 00 48 44 44 44 00 44 44 44 00 44 44 00 44 44 44 44 44 44 44 00 00 00 00 44 47 44 44 00 44 44 47 44 44 44 44 44 44 00 44 44 44 00 00 44 44 00 44 48 44 44 48 44 44 44 44 44 44 44 00 44 44 44 00 00 44 44 44 44 44 00 48 44 44 44 44 48 44 44 00 00 44 00 48 44 44 00 44 44 00 48 44 44 44 44 44 44 44 44 48 44 44 00 44 44 44 00 44 44 44 44 44 44 44 47 44 44 44 00 44 44 44 44 44 44 48 44 44 48 44 44 44 00 44 44 00 44 44 00 00 44 00 00 44 44 48 44 00 44 44 44 00 44 44 48 44 44 44 00 44 44 44 48 44 00 44 44 44 00 44 44 00 48 44 44 44 44 00 00 44 00 48 44 44 44 00 44 44 44 44 44 44 48 44 44 00 44 44 00 44 44 48 44 44 44 44 44 44 44 44 00 44 44 48 44 44 44 00 48 44 44 44 44 00 00 44 00 48 44 44 00 44 44 47 44 44 44 00 44 44 00 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 00 44 00 44 00 44 44 44 44 44 44 44 00 44 44 44 00 48 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 00 44 00 00 44 44 00 00 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 48 44 44 44 00 00 48 44 48 44 44 44 00 44 44 44 44 44 44 44 44 00 48 44 44 00 00 44 00 44 44 44 00 48 44 44 44 44 44 00 44 44 44 00 44 44 00 44 44 00 48 44 44 00 00 44 00 48 44 44 00 00 44 00 44 44 44 00 00 00 44 48 44 44 00 00 44 00 00 44 44 00 44 00 44 44 00 00 44 00 48 44 44 00 00 44 00 44 44 00 00 44 00 00 44 48 44 44 44 48 44 44 44 44 00 00 44 00 00 44 44 00 00 44 00 00 44 44 00 00 44 44 44 44 44 00 44 44 44 44 44 44 00 48 44 44 44 44 00 44 44 44 44 44 44 00 00 44 00 00 44 00 48 44 48 44 44 44 48 44 00 00 00 48 44 44 00 00 44 44 00 00 44 00 44 44
*/
