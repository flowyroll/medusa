.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xb63d, %rbp
nop
nop
nop
nop
sub %rax, %rax
mov (%rbp), %dx
nop
add $54839, %rax
lea addresses_D_ht+0xcb9b, %r10
nop
nop
nop
nop
and %rdi, %rdi
movl $0x61626364, (%r10)
nop
nop
nop
nop
cmp $2267, %rax
lea addresses_WT_ht+0x10b5b, %rsi
lea addresses_UC_ht+0x1eb75, %rdi
and %r11, %r11
mov $26, %rcx
rep movsb
nop
and %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x439b, %rax
nop
cmp $3796, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, (%rax)
nop
nop
xor %rbp, %rbp

// Load
lea addresses_UC+0x14e01, %r15
nop
nop
cmp $53814, %rbx
mov (%r15), %ax
cmp %rdi, %rdi

// Store
lea addresses_normal+0x192eb, %r15
nop
add $53808, %rbx
mov $0x5152535455565758, %rax
movq %rax, (%r15)
nop
nop
nop
dec %rax

// Store
lea addresses_D+0x1f601, %rbx
nop
inc %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rbx)
nop
nop
nop
nop
cmp $1938, %rdi

// Store
lea addresses_US+0x1769b, %rbp
clflush (%rbp)
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %r15
movq %r15, (%rbp)
nop
nop
nop
cmp $32744, %rbx

// Store
lea addresses_A+0x1144d, %rbp
nop
nop
xor $7740, %rax
movw $0x5152, (%rbp)
and %rsi, %rsi

// Store
lea addresses_RW+0x1b15b, %r15
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
movups %xmm6, (%r15)
nop
nop
nop
cmp $18775, %r15

// Store
lea addresses_WT+0x2fcb, %rsi
clflush (%rsi)
nop
nop
nop
nop
cmp $22969, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
add $27224, %rbx

// Store
lea addresses_D+0xf4b, %rax
and %rcx, %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm3
vmovups %ymm3, (%rax)
add $58021, %rbp

// Store
lea addresses_normal+0x1389b, %r15
clflush (%r15)
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %rax
movq %rax, %xmm7
movups %xmm7, (%r15)
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_US+0x1f39b, %rdi
nop
nop
nop
nop
nop
xor %rcx, %rcx
movw $0x5152, (%rdi)
sub %rdi, %rdi

// Store
lea addresses_US+0x1ab9b, %rdi
nop
nop
dec %rbp
movl $0x51525354, (%rdi)
nop
sub $57199, %rsi

// Faulty Load
lea addresses_US+0x1f39b, %rbp
nop
cmp %rdi, %rdi
mov (%rbp), %si
lea oracles, %rbp
and $0xff, %rsi
shlq $12, %rsi
mov (%rbp,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 9}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'52': 1}
52
*/
