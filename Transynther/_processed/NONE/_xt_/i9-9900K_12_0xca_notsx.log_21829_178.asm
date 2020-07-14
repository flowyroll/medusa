.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x154e6, %rsi
lea addresses_UC_ht+0x19686, %rdi
nop
cmp $64413, %r8
mov $125, %rcx
rep movsq
nop
nop
nop
nop
add $36384, %rcx
lea addresses_normal_ht+0x149e6, %r10
nop
nop
nop
add $25668, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm3
movups %xmm3, (%r10)
nop
nop
nop
nop
add $9269, %rsi
lea addresses_A_ht+0xe986, %rsi
lea addresses_normal_ht+0x5e26, %rdi
nop
nop
nop
nop
dec %rbx
mov $117, %rcx
rep movsq
nop
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0xf706, %rcx
nop
nop
sub $41678, %r9
movb (%rcx), %bl
nop
nop
and $38312, %r9
lea addresses_D_ht+0x13786, %rsi
lea addresses_D_ht+0xf13e, %rdi
clflush (%rdi)
sub $33917, %r8
mov $88, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_WT_ht+0x1a9d9, %rbx
clflush (%rbx)
inc %rdi
vmovups (%rbx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r9
nop
add $44389, %r8
lea addresses_UC_ht+0x1a06, %rbx
nop
nop
nop
nop
nop
cmp $59182, %rsi
mov (%rbx), %r9w
nop
nop
nop
and %r8, %r8
lea addresses_normal_ht+0x13ea6, %r8
nop
nop
nop
nop
nop
add %rdi, %rdi
and $0xffffffffffffffc0, %r8
vmovaps (%r8), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
xor $6453, %rdi
lea addresses_normal_ht+0x13186, %rsi
lea addresses_normal_ht+0x1b610, %rdi
nop
dec %r14
mov $39, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x16686, %rdi
nop
nop
nop
xor %rcx, %rcx
vmovups (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0xe986, %rsi
lea addresses_WC_ht+0x5d86, %rdi
nop
nop
nop
and $41920, %r10
mov $28, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x6d86, %rsi
lea addresses_A_ht+0xd8a6, %rdi
nop
nop
nop
nop
nop
sub %r10, %r10
mov $39, %rcx
rep movsq
nop
nop
nop
nop
nop
and $16762, %r10
lea addresses_D_ht+0x2d46, %rbx
nop
nop
nop
add $10387, %r10
movw $0x6162, (%rbx)
nop
nop
nop
nop
and %r9, %r9
lea addresses_WC_ht+0xfd9f, %r9
nop
nop
add %r8, %r8
movups (%r9), %xmm5
vpextrq $0, %xmm5, %r14
nop
nop
nop
nop
nop
mfence
lea addresses_D_ht+0x3406, %rdi
nop
nop
nop
cmp %r14, %r14
movb (%rdi), %r10b
nop
nop
nop
nop
dec %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_UC+0x3d86, %rdi
nop
xor $18269, %rdx
mov (%rdi), %r10d
nop
nop
nop
nop
lfence

// Store
lea addresses_WT+0xd786, %r13
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
movups %xmm0, (%r13)
nop
nop
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_normal+0x4986, %rdx
cmp %r9, %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rdx)
nop
nop
nop
add $61937, %rdx

// REPMOV
lea addresses_WC+0xba86, %rsi
lea addresses_A+0x56e6, %rdi
clflush (%rdi)
nop
nop
nop
cmp %rdx, %rdx
mov $50, %rcx
rep movsw
cmp %r9, %r9

// Store
lea addresses_A+0x11e6, %rsi
nop
nop
nop
nop
xor $12328, %rax
mov $0x5152535455565758, %r10
movq %r10, (%rsi)
nop
nop
nop
nop
and %rax, %rax

// Store
mov $0x1cb4e50000000986, %r10
nop
nop
nop
nop
nop
add $51711, %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm2
vmovups %ymm2, (%r10)
nop
nop
xor %r10, %r10

// Store
lea addresses_WT+0x2dc6, %rax
nop
nop
nop
xor $8326, %rdx
mov $0x5152535455565758, %r13
movq %r13, (%rax)
nop
nop
add %r9, %r9

// Load
lea addresses_WT+0x157c6, %rcx
clflush (%rcx)
nop
nop
dec %r13
movups (%rcx), %xmm6
vpextrq $0, %xmm6, %rsi

// Exception!!!
nop
nop
nop
mov (0), %rcx
and $11053, %rax

// Faulty Load
lea addresses_WT+0x1ad86, %rdi
nop
nop
nop
nop
add $12509, %rsi
mov (%rdi), %rdx
lea oracles, %r9
and $0xff, %rdx
shlq $12, %rdx
mov (%r9,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'dst': {'same': True, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
