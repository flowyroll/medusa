.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xcf85, %r11
nop
nop
xor %r9, %r9
mov (%r11), %cx
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x8275, %rsi
lea addresses_normal_ht+0x1ae61, %rdi
nop
nop
nop
nop
nop
add $55857, %rdx
mov $113, %rcx
rep movsb
nop
inc %rdi
lea addresses_D_ht+0xf21, %rdx
nop
nop
nop
nop
xor $28111, %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rdx)
nop
nop
dec %rdi
lea addresses_D_ht+0xac95, %r13
nop
inc %rdx
mov (%r13), %di
nop
inc %r9
lea addresses_WC_ht+0x17465, %rsi
lea addresses_WC_ht+0x285d, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $94, %rcx
rep movsq
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_D_ht+0x16225, %rsi
lea addresses_WC_ht+0x11ef5, %rdi
nop
nop
nop
nop
sub $16683, %r11
mov $46, %rcx
rep movsl
cmp %r9, %r9
lea addresses_normal_ht+0xeb95, %rsi
lea addresses_WC_ht+0x10855, %rdi
nop
xor $11394, %r13
mov $106, %rcx
rep movsb
nop
nop
nop
nop
dec %r11
lea addresses_WT_ht+0x116f5, %rdx
nop
nop
nop
xor $13245, %r13
movl $0x61626364, (%rdx)
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x16995, %r13
nop
and $30318, %r11
mov (%r13), %r9w
nop
inc %rsi
lea addresses_UC_ht+0x1671f, %rsi
nop
nop
cmp $5685, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_D_ht+0x124b5, %r11
nop
nop
nop
add $43863, %rcx
movl $0x61626364, (%r11)
nop
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0xc1d5, %r8
nop
nop
nop
nop
sub %rsi, %rsi
mov (%r8), %r9w
nop
nop
and %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_RW+0x15375, %rdx
nop
and $20206, %rsi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
movups %xmm0, (%rdx)
cmp %rcx, %rcx

// Store
lea addresses_D+0x10e35, %rbx
xor %r9, %r9
mov $0x5152535455565758, %rdx
movq %rdx, (%rbx)
add %rbx, %rbx

// Store
lea addresses_US+0xce07, %rbx
nop
nop
nop
nop
nop
cmp %r9, %r9
movw $0x5152, (%rbx)
nop
sub %rcx, %rcx

// Store
lea addresses_WT+0x5f75, %rbp
nop
nop
nop
nop
nop
add $54476, %rdi
movw $0x5152, (%rbp)
nop
cmp %rsi, %rsi

// Store
mov $0x3a8, %rdi
and $59889, %rcx
movw $0x5152, (%rdi)
nop
nop
nop
nop
sub %rbx, %rbx

// Faulty Load
lea addresses_A+0x76f5, %rdi
nop
nop
nop
nop
nop
cmp $16336, %rdx
movb (%rdi), %r9b
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 1, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_P', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 5}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 4}}
{'00': 670}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
