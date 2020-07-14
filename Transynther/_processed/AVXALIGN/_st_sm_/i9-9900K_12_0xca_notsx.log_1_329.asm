.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xadfa, %rsi
lea addresses_normal_ht+0xbcfa, %rdi
nop
xor $55895, %r14
mov $104, %rcx
rep movsl
and %r9, %r9
lea addresses_WC_ht+0x1c19e, %rsi
lea addresses_UC_ht+0x917a, %rdi
nop
nop
nop
add $42140, %r11
mov $29, %rcx
rep movsl
nop
nop
nop
nop
sub %r9, %r9
lea addresses_UC_ht+0x1003a, %rsi
lea addresses_normal_ht+0x949a, %rdi
clflush (%rsi)
cmp %rdx, %rdx
mov $13, %rcx
rep movsq
nop
nop
dec %rcx
lea addresses_D_ht+0x151da, %rsi
lea addresses_A_ht+0x1dc2a, %rdi
nop
nop
nop
nop
nop
inc %r14
mov $0, %rcx
rep movsl
nop
nop
nop
and %r14, %r14
lea addresses_A_ht+0x199fa, %r9
nop
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %r11
movq %r11, (%r9)
nop
nop
nop
nop
add $40658, %rsi
lea addresses_UC_ht+0x881a, %rsi
lea addresses_WC_ht+0x1ddfa, %rdi
clflush (%rdi)
nop
nop
sub $7531, %r11
mov $115, %rcx
rep movsq
nop
inc %rcx
lea addresses_A_ht+0x5b3a, %r9
nop
nop
nop
nop
nop
inc %r14
movb (%r9), %r11b
nop
nop
nop
nop
cmp $9529, %rdx
lea addresses_A_ht+0x1b61a, %rdx
and %rcx, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm5
vmovups %ymm5, (%rdx)
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_WC_ht+0x11ee8, %rdx
nop
nop
sub $41997, %r14
movb $0x61, (%rdx)
nop
nop
nop
nop
nop
cmp $14485, %r9
lea addresses_D_ht+0x5dfa, %rdi
nop
nop
nop
nop
nop
xor $9614, %r14
movl $0x61626364, (%rdi)
sub $31938, %r14
lea addresses_WT_ht+0xeefa, %rcx
nop
nop
nop
nop
dec %rdx
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
xor %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rsi

// Store
lea addresses_D+0x105fa, %rax
nop
nop
add $26267, %r13
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
sub $54516, %rbx

// Store
lea addresses_normal+0x6cfa, %rsi
sub $26285, %rbx
movw $0x5152, (%rsi)
nop
add $22896, %r13

// Store
lea addresses_A+0xcdfa, %r13
nop
nop
xor $52710, %r10
mov $0x5152535455565758, %rbx
movq %rbx, (%r13)
sub %r13, %r13

// Store
mov $0x51a, %rbx
nop
nop
nop
sub $21153, %r8
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movaps %xmm3, (%rbx)
nop
nop
nop
nop
nop
sub $27735, %r8

// Store
mov $0xef5c80000000cfa, %rsi
nop
nop
nop
nop
xor %rbx, %rbx
movb $0x51, (%rsi)
nop
nop
nop
nop
dec %rsi

// Store
lea addresses_PSE+0x1472a, %rbx
clflush (%rbx)
nop
cmp $39210, %rbp
movl $0x51525354, (%rbx)
add $36223, %rbp

// Store
lea addresses_RW+0x844e, %r13
sub $59334, %rbx
movb $0x51, (%r13)
nop
nop
nop
nop
and %r8, %r8

// Store
lea addresses_A+0xcdfa, %r13
nop
sub $57205, %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm3
movups %xmm3, (%r13)
dec %r13

// Store
lea addresses_UC+0x5b7a, %rbx
nop
nop
nop
nop
nop
xor $1386, %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm0
movups %xmm0, (%rbx)
nop
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_D+0x1df42, %rax
clflush (%rax)
and %r8, %r8
movb $0x51, (%rax)
nop
nop
nop
cmp $55450, %r8

// Faulty Load
lea addresses_A+0xcdfa, %rbx
sub $34259, %r8
movntdqa (%rbx), %xmm0
vpextrq $0, %xmm0, %r13
lea oracles, %rbp
and $0xff, %r13
shlq $12, %r13
mov (%rbp,%r13,1), %r13
pop %rsi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 5, 'type': 'addresses_D_ht'}, 'dst': {'same': True, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'58': 1}
58
*/
