.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x3b88, %rbp
nop
nop
nop
nop
nop
add %r15, %r15
movw $0x6162, (%rbp)
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_UC_ht+0xd9e8, %rdx
nop
nop
nop
and %r12, %r12
movw $0x6162, (%rdx)
nop
nop
nop
add %rbp, %rbp
lea addresses_WC_ht+0x12a68, %rsi
lea addresses_D_ht+0x1ad30, %rdi
add %rdx, %rdx
mov $98, %rcx
rep movsl
and %rax, %rax
lea addresses_normal_ht+0x3ec0, %rsi
lea addresses_A_ht+0x1367b, %rdi
nop
cmp %r15, %r15
mov $122, %rcx
rep movsb
nop
nop
cmp %rbp, %rbp
lea addresses_A_ht+0x1b72a, %rsi
lea addresses_WC_ht+0x123d8, %rdi
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $24, %rcx
rep movsb
nop
nop
and %r12, %r12
lea addresses_D_ht+0x2a68, %r12
nop
sub %r15, %r15
movups (%r12), %xmm2
vpextrq $0, %xmm2, %rbp
nop
nop
nop
nop
add $58142, %rax
lea addresses_WC_ht+0x13678, %rsi
lea addresses_WC_ht+0x5c68, %rdi
clflush (%rdi)
nop
inc %r12
mov $51, %rcx
rep movsb
nop
nop
nop
cmp $30496, %r11
lea addresses_WC_ht+0x3986, %r15
clflush (%r15)
nop
nop
and %rcx, %rcx
movl $0x61626364, (%r15)
nop
nop
add $17117, %rbp
lea addresses_WT_ht+0x268, %rsi
nop
nop
and $45403, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
nop
add $51667, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rax
push %rbp
push %rdi
push %rsi

// Store
lea addresses_WT+0x5fa8, %rax
nop
cmp $47873, %r9
mov $0x5152535455565758, %r13
movq %r13, (%rax)
nop
nop
nop
nop
nop
dec %rdi

// Store
lea addresses_RW+0x11b68, %rsi
nop
nop
nop
and %rax, %rax
movw $0x5152, (%rsi)
dec %r13

// Faulty Load
mov $0x14d5da0000000268, %r9
nop
nop
nop
and %rbp, %rbp
vmovups (%r9), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'00': 2694, '48': 16195, '44': 2940}
00 44 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 44 48 48 48 48 48 48 48 44 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 44 48 48 48 48 48 48 48 48 48 00 48 48 00 48 48 48 00 48 48 48 48 48 48 48 44 48 44 48 48 48 48 48 44 48 48 00 48 48 00 48 48 48 48 00 48 48 48 48 00 48 48 48 00 48 48 48 00 48 00 48 44 48 48 00 48 44 48 48 48 48 48 48 48 44 48 48 48 48 48 48 48 48 44 48 48 48 44 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 44 00 48 48 44 00 48 48 00 48 44 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 44 48 44 48 44 44 48 48 48 48 44 48 44 48 48 48 48 44 48 48 44 48 48 00 48 48 48 48 48 00 00 44 48 48 00 48 44 48 48 48 00 48 48 48 44 00 48 48 44 48 48 48 48 44 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 44 48 48 48 48 48 00 48 48 44 00 48 48 00 48 48 48 48 48 44 48 00 48 48 48 48 48 48 00 48 00 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 44 48 44 48 48 48 48 00 48 48 48 44 48 44 48 00 48 48 00 48 00 00 00 48 48 48 00 48 48 48 48 00 44 48 00 48 48 44 48 48 48 44 48 44 48 00 00 48 44 48 48 48 48 48 48 48 44 48 48 48 44 48 48 48 00 48 48 48 00 48 44 48 00 48 44 48 00 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 44 48 48 48 48 00 48 44 48 48 48 48 48 48 48 44 48 44 48 44 48 48 00 48 00 44 48 48 48 00 48 44 48 00 48 48 48 00 48 48 48 44 48 48 44 44 48 44 48 48 48 48 48 48 00 48 00 44 00 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 48 48 48 48 48 48 48 44 48 44 48 48 48 48 00 48 00 44 48 48 44 48 00 48 48 44 48 44 48 44 48 48 48 48 48 48 44 48 44 48 44 48 48 44 48 48 48 00 48 48 00 48 44 48 00 48 48 44 48 48 48 48 00 48 44 48 48 48 00 48 48 48 00 48 44 48 00 48 48 44 48 00 48 48 44 00 48 48 00 48 48 48 48 48 48 48 44 48 44 48 48 48 48 44 48 48 48 44 48 48 48 48 48 48 48 48 48 44 48 00 48 48 44 48 44 48 00 48 48 48 48 48 44 48 48 48 48 48 00 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 44 48 48 48 00 00 48 00 48 44 48 44 48 48 48 44 48 44 00 48 48 44 48 44 00 48 44 48 48 48 44 48 48 48 44 48 44 48 48 48 48 44 48 48 48 48 48 48 48 48 48 48 48 44 48 44 48 48 48 48 48 48 48 48 00 48 44 48 00 48 48 48 00 00 48 00 48 00 48 48 44 48 44 48 44 48 48 44 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 00 48 48 48 44 48 48 48 44 48 48 48 48 48 00 00 00 48 48 44 48 48 48 48 48 48 48 44 48 00 48 44 48 48 48 44 48 48 48 48 48 48 48 48 48 48 44 48 48 48 00 48 48 48 00 48 48 48 44 48 48 48 44 48 00 00 48 48 48 48 00 48 48 48 48 48 48 48 48 00 48 00 48 48 00 48 44 48 00 48 48 48 48 44 44 48 44 48 48 48 44 48 48 48 44 48 48 48 48 48 48 48 44 48 48 44 48 48 48 00 48 00 48 48 48 48 48 44 48 48 48 48 48 00 44 48 44 48 48 48 48 48 48 00 48 48 44 48 48 48 00 00 48 44 48 48 48 00 48 48 44 48 48 48 48 48 48 48 00 48 44 48 00 48 48 48 44 48 44 48 48 48 48 48 00 48 48 48 00 44 48 48 44 48 48 48 44 44 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 44 48 48 48 44 48 48 48 00 48 48 48 44 48 48 44 00 48 48 44 44 48 44 48 48 44 48 44 48 48 48 48 48 48 48 48 48 48 48 48 44 48 48 48
*/
