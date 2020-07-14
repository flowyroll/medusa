.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xd276, %rdi
nop
add %r10, %r10
movups (%rdi), %xmm5
vpextrq $0, %xmm5, %r15
nop
nop
nop
dec %rsi
lea addresses_UC_ht+0x1a9cc, %rdi
sub %r14, %r14
mov (%rdi), %r10w
nop
nop
nop
nop
add $64400, %r15
lea addresses_WT_ht+0x9d8c, %rsi
lea addresses_normal_ht+0x298c, %rdi
nop
nop
nop
sub %rbp, %rbp
mov $79, %rcx
rep movsw
nop
nop
nop
nop
dec %rbp
lea addresses_normal_ht+0x1cd8c, %r14
nop
nop
nop
xor $30045, %r10
mov (%r14), %ebp
nop
nop
nop
nop
nop
add $48602, %r10
lea addresses_UC_ht+0xc48c, %rbp
nop
nop
nop
nop
nop
inc %rcx
movw $0x6162, (%rbp)
add %rcx, %rcx
lea addresses_normal_ht+0x158c, %rsi
lea addresses_WC_ht+0x1c142, %rdi
clflush (%rdi)
cmp $52503, %r8
mov $71, %rcx
rep movsq
xor %rdi, %rdi
lea addresses_A_ht+0x97bc, %r10
nop
nop
nop
nop
nop
dec %rbp
mov (%r10), %rsi
nop
nop
and %rbp, %rbp
lea addresses_normal_ht+0x2caa, %rsi
lea addresses_WC_ht+0x116d4, %rdi
nop
nop
nop
add %r14, %r14
mov $29, %rcx
rep movsl
nop
sub $26388, %r14
lea addresses_WT_ht+0xcc0c, %rsi
lea addresses_A_ht+0x13fee, %rdi
nop
nop
sub %r8, %r8
mov $108, %rcx
rep movsw
nop
and %r15, %r15
lea addresses_A_ht+0x34cc, %r15
nop
nop
nop
dec %r14
movups (%r15), %xmm0
vpextrq $0, %xmm0, %r8
nop
nop
nop
dec %r15
lea addresses_A_ht+0xcd8c, %r14
nop
nop
nop
cmp $35252, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm5
vmovups %ymm5, (%r14)
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x1298c, %r15
nop
nop
nop
nop
sub %rbp, %rbp
and $0xffffffffffffffc0, %r15
vmovaps (%r15), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
nop
nop
nop
nop
nop
xor $33017, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x438c, %r14
nop
nop
sub $20989, %r15
mov $0x5152535455565758, %r9
movq %r9, %xmm2
vmovups %ymm2, (%r14)
nop
nop
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_PSE+0xbb68, %r11
mfence
mov $0x5152535455565758, %r14
movq %r14, %xmm0
movups %xmm0, (%r11)
and %rbx, %rbx

// REPMOV
lea addresses_RW+0xa50c, %rsi
lea addresses_A+0x2d8c, %rdi
sub $62589, %r12
mov $39, %rcx
rep movsq
nop
nop
nop
nop
nop
and $32872, %rbx

// Store
lea addresses_WC+0x740c, %rbx
nop
and %r12, %r12
movb $0x51, (%rbx)
add %rbx, %rbx

// Store
lea addresses_A+0x2d8c, %r15
add %rcx, %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovups %ymm1, (%r15)
nop
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_WC+0x7d8c, %r9
nop
nop
add $4773, %rsi
mov $0x5152535455565758, %r8
movq %r8, (%r9)
nop
nop
nop
nop
nop
xor $34525, %r9

// Store
lea addresses_D+0x14db0, %rbx
nop
sub %r9, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm2
vmovups %ymm2, (%rbx)
nop
nop
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_A+0x1954c, %rdi
clflush (%rdi)
and $31564, %rbx
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
sub %r15, %r15

// Store
mov $0x6387fa000000038c, %rbx
nop
dec %r9
movw $0x5152, (%rbx)
cmp %r8, %r8

// Store
lea addresses_WC+0x798c, %r12
and $34994, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovups %ymm0, (%r12)
inc %rsi

// Faulty Load
lea addresses_A+0x2d8c, %rsi
add %r12, %r12
mov (%rsi), %r11
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_RW'}, 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 9}}
{'58': 21241}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
