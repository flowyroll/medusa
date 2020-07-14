.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x5dda, %rsi
lea addresses_WT_ht+0xcdfa, %rdi
nop
nop
nop
nop
cmp $56794, %r10
mov $27, %rcx
rep movsq
nop
nop
nop
add $61460, %r9
lea addresses_A_ht+0x5c5a, %r15
nop
nop
nop
nop
nop
xor $23923, %rax
and $0xffffffffffffffc0, %r15
movntdqa (%r15), %xmm0
vpextrq $1, %xmm0, %rcx
nop
add %rax, %rax
lea addresses_A_ht+0x1c6da, %rsi
lea addresses_UC_ht+0x18bfa, %rdi
cmp $59609, %r14
mov $5, %rcx
rep movsw
nop
nop
cmp $12629, %r15
lea addresses_A_ht+0xc82a, %r10
nop
nop
dec %rax
movups (%r10), %xmm2
vpextrq $0, %xmm2, %rdi
nop
cmp $37394, %rcx
lea addresses_UC_ht+0xf7fa, %rsi
lea addresses_normal_ht+0xcbfa, %rdi
nop
nop
nop
nop
xor $63956, %r10
mov $60, %rcx
rep movsl
nop
sub $65270, %rsi
lea addresses_D_ht+0xf46f, %rsi
lea addresses_WC_ht+0xb222, %rdi
clflush (%rdi)
nop
and %r15, %r15
mov $102, %rcx
rep movsb
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0xbd1a, %r10
nop
nop
nop
nop
nop
inc %rax
movb (%r10), %cl
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_WT_ht+0x1f7a, %rcx
nop
nop
nop
nop
sub $16179, %r15
vmovups (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r14
inc %r10
lea addresses_WC_ht+0x1dffa, %rsi
lea addresses_A_ht+0x7ffa, %rdi
nop
nop
and $14575, %r15
mov $73, %rcx
rep movsb
nop
cmp %r15, %r15
lea addresses_WT_ht+0x1c1ba, %r15
nop
nop
nop
nop
xor $52136, %rcx
movb (%r15), %r10b
nop
nop
and $23724, %rsi
lea addresses_WT_ht+0x1c5fa, %rdi
nop
nop
nop
nop
sub %r15, %r15
vmovups (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rax
nop
nop
cmp %r9, %r9
lea addresses_D_ht+0xf442, %r10
nop
nop
nop
nop
cmp $24266, %rcx
mov (%r10), %esi
nop
cmp $19094, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rax
push %rbp
push %rbx

// Store
lea addresses_D+0x10a62, %r14
nop
nop
nop
add $46038, %rax
mov $0x5152535455565758, %rbx
movq %rbx, (%r14)
nop
add $63249, %rbx

// Store
mov $0x7fa, %rbp
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %r14
movq %r14, (%rbp)
nop
nop
nop
nop
nop
xor $54817, %rbx

// Store
lea addresses_D+0x15c7a, %rbx
add $56375, %r11
movw $0x5152, (%rbx)
nop
nop
nop
add $18849, %r14

// Load
lea addresses_WC+0x81fa, %r11
nop
nop
nop
nop
nop
xor $40660, %r14
movb (%r11), %bl
nop
dec %r14

// Store
lea addresses_WC+0x7f0a, %rax
nop
nop
xor %r14, %r14
mov $0x5152535455565758, %r13
movq %r13, %xmm0
vmovups %ymm0, (%rax)
nop
nop
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_PSE+0x1a7fa, %r14
and $38034, %rbx
movb $0x51, (%r14)
nop
nop
nop
nop
nop
dec %r15

// Store
lea addresses_RW+0x177fa, %r14
clflush (%r14)
nop
nop
add %r15, %r15
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%r14)
nop
nop
nop
nop
nop
and %r13, %r13

// Load
lea addresses_RW+0x1a200, %rax
nop
nop
sub %rbx, %rbx
movups (%rax), %xmm0
vpextrq $0, %xmm0, %r13
dec %rbp

// Load
lea addresses_PSE+0x177fa, %r13
add %rbp, %rbp
mov (%r13), %rbx
nop
nop
nop
xor %r15, %r15

// Faulty Load
mov $0xffa, %r14
nop
and $36330, %rbx
movntdqa (%r14), %xmm0
vpextrq $0, %xmm0, %r11
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': True, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_P', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}, 'dst': {'same': True, 'type': 'addresses_A_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'00': 1}
00
*/
