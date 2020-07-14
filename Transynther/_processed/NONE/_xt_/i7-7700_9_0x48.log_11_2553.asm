.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x175dc, %r10
nop
nop
nop
nop
cmp $45643, %rax
movb (%r10), %r9b
nop
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_UC_ht+0x16213, %r11
nop
and $46813, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
movups %xmm5, (%r11)
cmp $24821, %rdx
lea addresses_UC_ht+0xb7bf, %rbx
nop
nop
xor %r9, %r9
mov (%rbx), %rsi
nop
nop
dec %r11
lea addresses_D_ht+0x3237, %rsi
nop
nop
and $15428, %rbx
movw $0x6162, (%rsi)
nop
nop
nop
and %r9, %r9
lea addresses_WT_ht+0x11187, %r9
nop
and %rbx, %rbx
mov $0x6162636465666768, %r11
movq %r11, (%r9)
nop
nop
nop
inc %r9
lea addresses_A_ht+0x14e37, %r10
nop
nop
nop
lfence
movb (%r10), %r11b
nop
nop
nop
nop
cmp $674, %r10
lea addresses_WT_ht+0x19e37, %rax
nop
nop
nop
nop
add $43377, %rbx
movw $0x6162, (%rax)
nop
nop
nop
nop
nop
lfence
lea addresses_WC_ht+0x3b73, %rbx
nop
sub %r9, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%rbx)
add %rax, %rax
lea addresses_A_ht+0x18677, %rsi
lea addresses_A_ht+0x1dbb, %rdi
nop
nop
sub $4662, %r11
mov $67, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $1237, %rsi
lea addresses_D_ht+0x16237, %rcx
nop
add $13468, %rax
movw $0x6162, (%rcx)
nop
nop
nop
nop
cmp $14065, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_normal+0xfe37, %rdx
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovntdq %ymm2, (%rdx)
nop
nop
sub %rdx, %rdx

// Store
lea addresses_D+0xbe97, %r13
cmp %rdi, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovups %ymm1, (%r13)
nop
cmp $21658, %rdi

// Store
lea addresses_PSE+0x1c237, %rdx
nop
nop
and $39939, %rbp
movw $0x5152, (%rdx)
nop
nop
nop
nop
nop
xor %r10, %r10

// Faulty Load
lea addresses_RW+0x10637, %rbp
nop
nop
nop
xor $41923, %r10
mov (%rbp), %dx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': True, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 11, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'32': 11}
32 32 32 32 32 32 32 32 32 32 32
*/
