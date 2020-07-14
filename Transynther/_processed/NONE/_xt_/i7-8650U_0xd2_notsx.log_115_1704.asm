.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x14182, %rdi
clflush (%rdi)
nop
nop
nop
cmp $51494, %r14
movb (%rdi), %r15b
nop
inc %r15
lea addresses_UC_ht+0x8b7a, %rax
nop
nop
sub %rdi, %rdi
movb $0x61, (%rax)
nop
nop
nop
inc %r11
lea addresses_WC_ht+0x1a0fa, %rsi
nop
nop
nop
add %r9, %r9
movb (%rsi), %r14b
nop
sub $22632, %r15
lea addresses_WC_ht+0x26fa, %r15
nop
nop
nop
nop
cmp $43937, %rdi
mov (%r15), %rsi
dec %r14
lea addresses_D_ht+0x110fa, %rsi
lea addresses_UC_ht+0xdcfa, %rdi
nop
nop
nop
nop
and %r9, %r9
mov $86, %rcx
rep movsw
nop
lfence
lea addresses_normal_ht+0x18dfa, %r15
nop
cmp %rdi, %rdi
movb $0x61, (%r15)
nop
add %r9, %r9
lea addresses_D_ht+0x18b6d, %rsi
lea addresses_normal_ht+0x48fa, %rdi
cmp $23176, %r14
mov $89, %rcx
rep movsl
and $51052, %r14
lea addresses_UC_ht+0x1aafa, %rsi
lea addresses_WC_ht+0xe0fa, %rdi
nop
nop
nop
cmp $45345, %r9
mov $99, %rcx
rep movsq
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x1a8fa, %rsi
lea addresses_WT_ht+0x1cfa, %rdi
nop
nop
nop
nop
xor $27505, %rax
mov $59, %rcx
rep movsw
nop
nop
nop
nop
and $46376, %r9
lea addresses_normal_ht+0xa02a, %rsi
nop
nop
nop
nop
nop
add $61325, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm1
movups %xmm1, (%rsi)
nop
xor $27646, %r11
lea addresses_A_ht+0xdcda, %rax
nop
dec %r14
mov (%rax), %cx
xor $50242, %rax
lea addresses_normal_ht+0x16bfa, %r14
nop
nop
nop
nop
nop
add $60249, %r11
movb (%r14), %al
cmp %rax, %rax
lea addresses_D_ht+0x1e176, %rsi
lea addresses_WC_ht+0x98fa, %rdi
nop
nop
dec %rax
mov $67, %rcx
rep movsw
nop
nop
nop
nop
cmp $44115, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rbx

// Store
lea addresses_WC+0x38fa, %rax
nop
nop
nop
nop
and $30458, %rbp
mov $0x5152535455565758, %r8
movq %r8, (%rax)
nop
nop
inc %r15

// Store
lea addresses_A+0x132fa, %rbx
nop
nop
nop
nop
nop
sub $54257, %r14
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_RW+0x93e6, %r15
nop
and %rbx, %rbx
movb $0x51, (%r15)
nop
inc %rbp

// Store
lea addresses_UC+0xf154, %r15
nop
nop
sub %rbx, %rbx
mov $0x5152535455565758, %rax
movq %rax, (%r15)
nop
nop
add %rax, %rax

// Store
lea addresses_WC+0xb97a, %rbp
nop
cmp $62814, %rax
movb $0x51, (%rbp)
nop
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_US+0x4bfa, %rbp
nop
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %r14
movq %r14, (%rbp)
nop
nop
nop
nop
nop
and $12688, %r15

// Store
lea addresses_RW+0x19ffa, %rbp
nop
nop
nop
xor %rbx, %rbx
movw $0x5152, (%rbp)
nop
nop
dec %r14

// Load
lea addresses_UC+0x1302e, %rax
nop
nop
nop
nop
nop
dec %rbp
movups (%rax), %xmm0
vpextrq $1, %xmm0, %r15
nop
sub $14938, %r8

// Load
lea addresses_PSE+0xccfa, %r8
add %rbx, %rbx
vmovups (%r8), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rax
nop
nop
nop
nop
nop
sub $40016, %r10

// Faulty Load
lea addresses_normal+0xa8fa, %rbp
nop
nop
nop
nop
nop
cmp $64128, %rax
mov (%rbp), %ebx
lea oracles, %r8
and $0xff, %rbx
shlq $12, %rbx
mov (%r8,%rbx,1), %rbx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'34': 115}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
