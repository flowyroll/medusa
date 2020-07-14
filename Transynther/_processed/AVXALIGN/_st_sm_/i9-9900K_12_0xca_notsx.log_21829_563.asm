.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1586d, %r13
clflush (%r13)
nop
and %rax, %rax
movl $0x61626364, (%r13)
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0xcfad, %r14
clflush (%r14)
nop
nop
nop
nop
add $1846, %r8
movups (%r14), %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
nop
nop
xor $62784, %r13
lea addresses_A_ht+0x13bad, %rcx
nop
cmp $46265, %r12
movb (%rcx), %al
nop
add %rcx, %rcx
lea addresses_WT_ht+0x8aed, %r12
clflush (%r12)
nop
nop
sub %rax, %rax
vmovups (%r12), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r8
sub %r13, %r13
lea addresses_normal_ht+0xabad, %rsi
lea addresses_normal_ht+0x211d, %rdi
clflush (%rdi)
nop
nop
nop
cmp %r12, %r12
mov $26, %rcx
rep movsb
nop
nop
nop
nop
add %r14, %r14
lea addresses_UC_ht+0x1deb5, %rsi
lea addresses_WT_ht+0x3ad, %rdi
nop
nop
nop
cmp $53163, %rax
mov $43, %rcx
rep movsq
nop
nop
nop
nop
add $26976, %rsi
lea addresses_A_ht+0x2fcd, %rsi
lea addresses_normal_ht+0x121ad, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %rax, %rax
mov $95, %rcx
rep movsq
cmp $57706, %r12
lea addresses_WC_ht+0x3ad, %r13
nop
nop
nop
nop
cmp $2264, %r14
vmovups (%r13), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x113f5, %r8
nop
nop
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %r13
movq %r13, (%r8)
nop
nop
nop
cmp %r8, %r8
lea addresses_normal_ht+0x1d9ad, %rsi
lea addresses_normal_ht+0x73ad, %rdi
nop
nop
cmp %r12, %r12
mov $13, %rcx
rep movsq
nop
nop
nop
cmp $8594, %rax
lea addresses_normal_ht+0x3bed, %rsi
lea addresses_D_ht+0x15733, %rdi
nop
xor %r14, %r14
mov $62, %rcx
rep movsq
nop
nop
nop
nop
xor $43771, %rax
lea addresses_D_ht+0x62bd, %rsi
lea addresses_UC_ht+0x1412d, %rdi
nop
nop
nop
sub $12179, %r14
mov $16, %rcx
rep movsl
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_WT_ht+0x143ad, %r13
nop
nop
nop
nop
xor $6402, %rax
movb $0x61, (%r13)
nop
nop
nop
dec %r14
lea addresses_WC_ht+0xcfad, %r14
nop
nop
add $6476, %r12
mov (%r14), %si
nop
nop
lfence
lea addresses_D_ht+0x71ad, %rsi
nop
nop
nop
xor $43617, %r8
mov $0x6162636465666768, %r13
movq %r13, %xmm4
movups %xmm4, (%rsi)
nop
nop
nop
nop
nop
cmp $46270, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r9
push %rax
push %rbx
push %rdx

// Store
mov $0xaad, %r9
nop
nop
nop
nop
nop
sub $61522, %rbx
movl $0x51525354, (%r9)

// Exception!!!
nop
nop
nop
nop
mov (0), %rdx
nop
nop
nop
sub %r9, %r9

// Load
lea addresses_PSE+0x12e2d, %r15
clflush (%r15)
nop
nop
nop
xor $14138, %r11
movb (%r15), %bl
nop
nop
nop
nop
nop
and %r9, %r9

// Store
lea addresses_US+0x143ad, %rbx
nop
nop
nop
xor $9002, %rax
movw $0x5152, (%rbx)
nop
nop
nop
add $55420, %r9

// Store
lea addresses_WC+0x73d, %r12
nop
nop
and %rax, %rax
movb $0x51, (%r12)
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_D+0x18fad, %r15
nop
nop
nop
nop
xor %r9, %r9
movl $0x51525354, (%r15)
nop
sub $27914, %r15

// Store
mov $0x25c1e00000000e2d, %rbx
nop
nop
dec %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm0
vmovups %ymm0, (%rbx)
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_WT+0x1db85, %r9
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %rax
movq %rax, %xmm5
vmovups %ymm5, (%r9)
nop
nop
nop
nop
nop
dec %rbx

// Faulty Load
lea addresses_US+0x143ad, %r11
nop
nop
nop
xor $52539, %rbx
mov (%r11), %r9d
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'dst': {'same': True, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'52': 21829}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
