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
lea addresses_WT_ht+0x18783, %rsi
lea addresses_A_ht+0x18be3, %rdi
nop
nop
xor $57781, %r8
mov $12, %rcx
rep movsq
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_A_ht+0x12afb, %r10
nop
xor %r14, %r14
mov (%r10), %ebp
nop
add %r14, %r14
lea addresses_A_ht+0x12b83, %rcx
add $1480, %r8
mov (%rcx), %di
cmp %r10, %r10
lea addresses_UC_ht+0x5223, %rsi
lea addresses_WT_ht+0xea2b, %rdi
nop
nop
nop
xor %r15, %r15
mov $85, %rcx
rep movsl
nop
nop
nop
nop
xor $21131, %rbp
lea addresses_WT_ht+0x13a63, %rsi
nop
nop
nop
add %rbp, %rbp
mov $0x6162636465666768, %r8
movq %r8, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
nop
nop
sub %r10, %r10
lea addresses_WC_ht+0x3f83, %rsi
lea addresses_WT_ht+0x12783, %rdi
nop
nop
nop
cmp $51355, %r14
mov $73, %rcx
rep movsl
nop
nop
nop
nop
nop
and $5756, %rdi
lea addresses_D_ht+0x882e, %r15
nop
nop
cmp $40011, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%r15)
nop
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x8283, %r8
nop
nop
nop
and $57477, %rcx
vmovups (%r8), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbp
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x13083, %rbp
and %rdi, %rdi
mov $0x6162636465666768, %r14
movq %r14, (%rbp)
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x6253, %rsi
lea addresses_A_ht+0x18383, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and $64990, %r15
mov $13, %rcx
rep movsb
nop
nop
nop
xor %r14, %r14
lea addresses_D_ht+0x1ae83, %r15
nop
nop
nop
nop
dec %rdi
movl $0x61626364, (%r15)
nop
nop
nop
add %r10, %r10
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
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi

// Store
lea addresses_PSE+0x14df3, %rax
nop
nop
nop
nop
xor %r11, %r11
mov $0x5152535455565758, %r9
movq %r9, %xmm4
vmovups %ymm4, (%rax)
nop
and $52467, %rax

// Store
lea addresses_WT+0x167a3, %rcx
nop
nop
sub %rbp, %rbp
movw $0x5152, (%rcx)
nop
xor $28894, %rcx

// Store
lea addresses_WC+0xc283, %r14
nop
nop
nop
add $23877, %r11
mov $0x5152535455565758, %rax
movq %rax, (%r14)
nop
nop
nop
xor $44058, %rax

// Store
lea addresses_normal+0x8e23, %r11
and %rbp, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, (%r11)
nop
nop
and %rcx, %rcx

// Store
lea addresses_D+0x16f5d, %rdi
nop
nop
nop
nop
nop
dec %rax
movb $0x51, (%rdi)
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_D+0x18983, %rdi
nop
nop
nop
xor %r9, %r9
movb $0x51, (%rdi)
cmp $47405, %rdi

// Load
lea addresses_US+0x19f83, %rbp
inc %rdi
movb (%rbp), %r14b
nop
nop
cmp $46159, %rax

// Store
mov $0x783, %rdi
nop
nop
nop
add $10563, %r14
mov $0x5152535455565758, %rax
movq %rax, (%rdi)
nop
nop
nop
nop
add %rax, %rax

// Faulty Load
mov $0x3811550000000783, %r14
nop
nop
nop
dec %r11
movups (%r14), %xmm2
vpextrq $0, %xmm2, %rdi
lea oracles, %r9
and $0xff, %rdi
shlq $12, %rdi
mov (%r9,%rdi,1), %rdi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 5}, 'dst': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'00': 2, '58': 29}
00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58
*/
