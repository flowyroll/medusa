.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x16f7, %rsi
lea addresses_D_ht+0xdb77, %rdi
nop
nop
nop
nop
nop
sub $28059, %r9
mov $88, %rcx
rep movsl
nop
nop
nop
nop
nop
add $21670, %r14
lea addresses_WC_ht+0xf45f, %rdi
sub $56469, %rbx
mov (%rdi), %rcx
nop
nop
nop
nop
cmp $11526, %rdi
lea addresses_UC_ht+0xf717, %r14
lfence
movb $0x61, (%r14)
nop
nop
nop
nop
nop
sub $5460, %rsi
lea addresses_D_ht+0xf8a7, %rsi
nop
add %r8, %r8
mov $0x6162636465666768, %r14
movq %r14, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
nop
sub $16253, %rbx
lea addresses_WT_ht+0xfe13, %r8
inc %rdi
movl $0x61626364, (%r8)
nop
nop
nop
nop
dec %r9
lea addresses_D_ht+0xf64f, %rcx
nop
and %rsi, %rsi
movl $0x61626364, (%rcx)
nop
sub $42450, %r14
lea addresses_A_ht+0x4af7, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub %r8, %r8
movl $0x61626364, (%rdi)
nop
nop
add $45221, %rcx
lea addresses_WT_ht+0x1893c, %r8
nop
nop
nop
sub $53813, %rcx
movw $0x6162, (%r8)
add %r8, %r8
lea addresses_UC_ht+0x176f7, %rsi
nop
cmp $23203, %r8
movl $0x61626364, (%rsi)
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0x3737, %rbx
nop
nop
xor %r14, %r14
movb $0x61, (%rbx)
cmp $18409, %r9
lea addresses_UC_ht+0x12937, %r8
nop
nop
nop
sub $16339, %rcx
movb $0x61, (%r8)
nop
nop
nop
nop
sub $3147, %rcx
lea addresses_normal_ht+0x956f, %rcx
nop
nop
nop
nop
nop
add $49839, %r9
mov (%rcx), %si
nop
nop
nop
dec %r9
lea addresses_WC_ht+0x12377, %rsi
nop
cmp $37279, %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
nop
nop
nop
sub $30291, %r9
lea addresses_A_ht+0x9db7, %rsi
lea addresses_normal_ht+0xa3ab, %rdi
nop
nop
nop
nop
nop
and %r12, %r12
mov $103, %rcx
rep movsw
nop
nop
nop
cmp $51693, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rax
push %rbx
push %rcx
push %rdx
push %rsi

// Load
lea addresses_normal+0x182f7, %rsi
nop
nop
nop
nop
add %rax, %rax
mov (%rsi), %r11
nop
nop
nop
nop
cmp %r11, %r11

// Store
mov $0xed7, %rax
clflush (%rax)
nop
nop
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rax)
nop
sub %rcx, %rcx

// Store
lea addresses_US+0x15637, %rdx
clflush (%rdx)
nop
nop
nop
xor $58960, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
movups %xmm2, (%rdx)
nop
nop
nop
nop
cmp %rax, %rax

// Faulty Load
lea addresses_US+0xd2f7, %rsi
nop
nop
xor $49952, %r11
movaps (%rsi), %xmm7
vpextrq $1, %xmm7, %r10
lea oracles, %rcx
and $0xff, %r10
shlq $12, %r10
mov (%rcx,%r10,1), %r10
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 1}}
{'45': 21826, '49': 1, '00': 2}
00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45
*/
