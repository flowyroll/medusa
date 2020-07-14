.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x2261, %rsi
lea addresses_WC_ht+0x5921, %rdi
add $23943, %r10
mov $21, %rcx
rep movsq
nop
nop
nop
add $19171, %rbp
lea addresses_WC_ht+0xa6e1, %r12
nop
xor $8118, %r13
mov $0x6162636465666768, %r10
movq %r10, %xmm6
vmovups %ymm6, (%r12)
nop
nop
nop
nop
cmp $36211, %r10
lea addresses_normal_ht+0x10a17, %rsi
lea addresses_UC_ht+0x14121, %rdi
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $18, %rcx
rep movsw
nop
nop
nop
nop
xor %r11, %r11
lea addresses_UC_ht+0xb421, %rsi
lea addresses_A_ht+0x14720, %rdi
and $9095, %r11
mov $108, %rcx
rep movsl
add $51090, %r10
lea addresses_UC_ht+0xf355, %r10
nop
nop
nop
nop
dec %rbp
mov (%r10), %ecx
nop
nop
nop
nop
nop
sub $55898, %rbp
lea addresses_WT_ht+0xcf21, %r11
nop
nop
nop
nop
nop
xor %r10, %r10
movb (%r11), %r13b
nop
nop
nop
dec %rdi
lea addresses_A_ht+0x11081, %r11
clflush (%r11)
nop
nop
nop
nop
dec %r10
mov (%r11), %bp
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x8ee1, %rsi
nop
and $568, %r11
movw $0x6162, (%rsi)
nop
nop
add %r10, %r10
lea addresses_WT_ht+0x10521, %rcx
nop
nop
dec %rsi
mov (%rcx), %r10d
nop
nop
cmp %r11, %r11
lea addresses_UC_ht+0x1ba1f, %r13
nop
xor %rbp, %rbp
movl $0x61626364, (%r13)
nop
nop
inc %r13
lea addresses_WT_ht+0x98c5, %rsi
lea addresses_normal_ht+0x19191, %rdi
nop
nop
nop
nop
nop
xor $20547, %r13
mov $8, %rcx
rep movsw
cmp $13499, %r13
lea addresses_WC_ht+0x190d1, %rsi
lea addresses_WC_ht+0x721, %rdi
nop
nop
nop
nop
and $48704, %r12
mov $13, %rcx
rep movsb
nop
nop
nop
nop
xor $62894, %rcx
lea addresses_normal_ht+0x6521, %rbp
clflush (%rbp)
nop
dec %rdi
movw $0x6162, (%rbp)
nop
xor %r12, %r12
lea addresses_UC_ht+0xb6a1, %r12
nop
nop
nop
nop
cmp $25926, %rdi
vmovups (%r12), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r11
sub $11176, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r9
push %rax
push %rbp
push %rcx

// Store
lea addresses_WT+0x1b21, %rax
nop
sub $64216, %r9
movb $0x51, (%rax)
nop
nop
add %rax, %rax

// Store
lea addresses_PSE+0x1c321, %rax
nop
nop
nop
inc %r15
movb $0x51, (%rax)
nop
inc %r13

// Load
lea addresses_WT+0x1d521, %r15
nop
nop
nop
nop
xor %rcx, %rcx
movups (%r15), %xmm3
vpextrq $1, %xmm3, %r13
nop
nop
add %rbp, %rbp

// Store
lea addresses_PSE+0x1fba1, %rbp
nop
and %rax, %rax
movl $0x51525354, (%rbp)
nop
nop
inc %r14

// Store
mov $0x375cd80000000321, %rax
and $50464, %r15
mov $0x5152535455565758, %r14
movq %r14, (%rax)
nop
nop
nop
nop
dec %rax

// Load
lea addresses_normal+0x9721, %r15
nop
nop
nop
dec %rbp
movups (%r15), %xmm2
vpextrq $0, %xmm2, %r13
xor %r13, %r13

// Store
lea addresses_A+0x1c321, %rbp
nop
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %r13
movq %r13, (%rbp)
nop
nop
nop
nop
sub $65349, %rcx

// Faulty Load
lea addresses_US+0x11321, %r9
nop
nop
and %r15, %r15
mov (%r9), %bp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': True, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'58': 18741}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
