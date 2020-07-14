.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x16680, %r8
clflush (%r8)
nop
nop
sub $58146, %r14
movl $0x61626364, (%r8)
nop
xor $29672, %r14
lea addresses_normal_ht+0x2052, %r13
and $60844, %rbx
mov $0x6162636465666768, %r8
movq %r8, %xmm0
movups %xmm0, (%r13)
nop
nop
nop
sub %rbx, %rbx
lea addresses_UC_ht+0xc52, %rcx
clflush (%rcx)
and %r13, %r13
movb (%rcx), %r14b
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_WC_ht+0x1b852, %r14
nop
nop
nop
nop
nop
sub $17177, %rsi
mov (%r14), %rbx
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x1152, %rsi
nop
nop
nop
nop
nop
and %r8, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
and $0xffffffffffffffc0, %rsi
movntdq %xmm3, (%rsi)
nop
cmp $52097, %rbx
lea addresses_UC_ht+0x1bb52, %r14
nop
nop
nop
cmp %r13, %r13
mov (%r14), %r8
nop
nop
nop
nop
nop
cmp $46900, %rbp
lea addresses_UC_ht+0x3312, %r14
nop
nop
add $22307, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
movups %xmm2, (%r14)
nop
nop
nop
inc %rbp
lea addresses_UC_ht+0x1bf52, %rsi
lea addresses_WT_ht+0x16952, %rdi
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $111, %rcx
rep movsb
nop
nop
dec %rsi
lea addresses_D_ht+0x169d2, %rbp
nop
nop
dec %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm0
movups %xmm0, (%rbp)
nop
nop
nop
nop
and $20337, %rdi
lea addresses_WT_ht+0x3b52, %rcx
nop
nop
cmp $22994, %rdi
movb (%rcx), %r8b
nop
nop
dec %rbx
lea addresses_UC_ht+0x9752, %rdi
nop
nop
add %rcx, %rcx
movl $0x61626364, (%rdi)
nop
nop
sub $19849, %rbp
lea addresses_UC_ht+0x5cd2, %rbp
nop
nop
nop
add $3000, %rcx
movups (%rbp), %xmm2
vpextrq $0, %xmm2, %r13
nop
nop
cmp $4217, %rbx
lea addresses_A_ht+0x1e5be, %rcx
xor %r13, %r13
movb (%rcx), %r14b
nop
nop
nop
nop
nop
inc %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Load
lea addresses_WT+0x76f2, %rbp
nop
nop
nop
nop
nop
cmp $22879, %rsi
and $0xffffffffffffffc0, %rbp
vmovntdqa (%rbp), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
nop
nop
dec %rdi

// Store
mov $0xc72, %r15
nop
nop
nop
nop
sub $42280, %rsi
movl $0x51525354, (%r15)
nop
nop
nop
sub %rdi, %rdi

// Load
lea addresses_WT+0x1ff42, %rsi
clflush (%rsi)
nop
sub $17874, %r12
vmovups (%rsi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdi
add %r12, %r12

// Store
mov $0x1ccf0b0000000a9d, %rsi
cmp $35773, %rdi
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
cmp $10772, %rdi

// Store
lea addresses_WC+0x1652, %r15
clflush (%r15)
nop
nop
nop
nop
xor $26667, %rcx
movl $0x51525354, (%r15)
nop
sub %rdi, %rdi

// Store
lea addresses_WT+0x17f52, %rcx
nop
dec %rsi
mov $0x5152535455565758, %rdi
movq %rdi, (%rcx)
nop
dec %r15

// Store
mov $0x93a, %rbp
nop
nop
xor %rdi, %rdi
movb $0x51, (%rbp)
nop
nop
cmp $26830, %rdi

// Load
mov $0xb9c, %r15
nop
nop
xor %r9, %r9
mov (%r15), %rcx
nop
nop
nop
nop
nop
sub $58376, %rcx

// Faulty Load
lea addresses_D+0x1cb52, %rcx
nop
nop
and %rdi, %rdi
mov (%rcx), %r9w
lea oracles, %r15
and $0xff, %r9
shlq $12, %r9
mov (%r15,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
