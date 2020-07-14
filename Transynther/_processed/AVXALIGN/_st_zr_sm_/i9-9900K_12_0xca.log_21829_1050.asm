.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x13d99, %rsi
lea addresses_D_ht+0x1a129, %rdi
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $50, %rcx
rep movsw
nop
inc %rbp
lea addresses_D_ht+0x1b5a0, %r14
nop
inc %rbp
movw $0x6162, (%r14)
nop
nop
nop
dec %rdx
lea addresses_normal_ht+0x3ac1, %rsi
lea addresses_WT_ht+0xac0d, %rdi
nop
add $51744, %r9
mov $51, %rcx
rep movsl
sub %r9, %r9
lea addresses_A_ht+0x11a29, %rsi
lea addresses_A_ht+0xe729, %rdi
nop
nop
inc %r9
mov $41, %rcx
rep movsb
nop
add $44833, %rcx
lea addresses_normal_ht+0x12a91, %rbp
nop
nop
nop
xor $12605, %rsi
mov (%rbp), %rdx
nop
nop
nop
nop
nop
xor $30730, %rbp
lea addresses_UC_ht+0xe29, %rsi
nop
nop
nop
nop
cmp $60728, %rdx
movl $0x61626364, (%rsi)
sub %r9, %r9
lea addresses_normal_ht+0xc3, %rsi
lea addresses_D_ht+0x19809, %rdi
nop
nop
nop
nop
xor $33370, %rax
mov $110, %rcx
rep movsb
nop
nop
nop
nop
nop
lfence
lea addresses_D_ht+0x4879, %rsi
lea addresses_A_ht+0x7b29, %rdi
nop
nop
cmp $35436, %r14
mov $8, %rcx
rep movsb
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_WT_ht+0x4c29, %rdi
nop
nop
nop
nop
and $5821, %r14
mov (%rdi), %si
inc %r14
lea addresses_normal_ht+0x1452d, %rsi
lea addresses_A_ht+0x1e829, %rdi
nop
nop
nop
nop
sub %r14, %r14
mov $32, %rcx
rep movsl
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x429, %rsi
lea addresses_A_ht+0x18569, %rdi
nop
nop
nop
sub $29011, %rbp
mov $11, %rcx
rep movsl
nop
nop
nop
xor $275, %rax
lea addresses_normal_ht+0xae29, %rcx
dec %r9
movw $0x6162, (%rcx)
nop
nop
nop
nop
xor $14794, %rdi
lea addresses_D_ht+0x6929, %rsi
lea addresses_D_ht+0x17629, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $17, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// Store
mov $0x2d511b0000000629, %r15
nop
nop
and $12025, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, (%r15)
xor $48190, %rsi

// Store
lea addresses_PSE+0x26a9, %rsi
nop
nop
nop
nop
nop
cmp %r9, %r9
movb $0x51, (%rsi)
nop
nop
nop
xor %r8, %r8

// Store
mov $0x2531070000000d41, %rsi
nop
add %r10, %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
and $26685, %rcx

// Load
lea addresses_A+0x3a29, %rcx
xor $24873, %r15
movups (%rcx), %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
dec %r10

// Load
lea addresses_normal+0x11739, %rdi
nop
nop
nop
nop
nop
sub $3200, %r15
movaps (%rdi), %xmm6
vpextrq $0, %xmm6, %r8
nop
nop
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_WT+0x5a99, %rcx
nop
add $7312, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
nop
and %r8, %r8

// Faulty Load
mov $0x2d511b0000000629, %r8
nop
nop
nop
and $64715, %rcx
mov (%r8), %r15d
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': True, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': True, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 3}}
{'00': 346, '58': 21483}
58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
