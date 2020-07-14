.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x408c, %rsi
lea addresses_UC_ht+0xc942, %rdi
clflush (%rdi)
nop
nop
dec %r13
mov $93, %rcx
rep movsb
nop
nop
sub %r11, %r11
lea addresses_UC_ht+0x1e88c, %rax
nop
nop
nop
add $53523, %r15
movups (%rax), %xmm7
vpextrq $1, %xmm7, %rdi
xor $44099, %rsi
lea addresses_normal_ht+0xc08c, %rax
nop
nop
cmp $17444, %r13
mov $0x6162636465666768, %rsi
movq %rsi, (%rax)
nop
nop
nop
cmp $52538, %r13
lea addresses_normal_ht+0x14a8c, %rsi
nop
cmp $25781, %r13
movups (%rsi), %xmm2
vpextrq $1, %xmm2, %r11
nop
nop
nop
nop
sub %rax, %rax
lea addresses_WC_ht+0x14a60, %r11
nop
nop
xor $28884, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%r11)
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_UC_ht+0x1a6b6, %rsi
lea addresses_D_ht+0x7e89, %rdi
nop
nop
dec %rbp
mov $100, %rcx
rep movsb
nop
add $38318, %rbp
lea addresses_WC_ht+0x7718, %rsi
cmp $39123, %r13
mov $0x6162636465666768, %rax
movq %rax, %xmm7
movups %xmm7, (%rsi)
nop
nop
inc %rdi
lea addresses_WT_ht+0x1d60c, %r15
nop
nop
cmp $24589, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%r15)
nop
cmp %r15, %r15
lea addresses_WC_ht+0x1948c, %r13
dec %rsi
mov (%r13), %r15
nop
nop
and $9073, %rbp
lea addresses_normal_ht+0x12b8c, %rsi
lea addresses_normal_ht+0xf4c, %rdi
cmp $40701, %r11
mov $68, %rcx
rep movsq
nop
sub $4861, %rcx
lea addresses_normal_ht+0xf7a4, %rcx
nop
nop
inc %r11
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %r15
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_A_ht+0xa324, %rsi
lea addresses_UC_ht+0xc07c, %rdi
clflush (%rsi)
nop
nop
add $22094, %rax
mov $8, %rcx
rep movsl
nop
nop
xor %rbp, %rbp
lea addresses_UC_ht+0x7f8c, %rbp
nop
and %rcx, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm1
vmovups %ymm1, (%rbp)
nop
nop
nop
nop
cmp $21586, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rbx
push %rcx
push %rdx

// Faulty Load
lea addresses_RW+0x788c, %rdx
nop
nop
nop
nop
nop
inc %rbx
vmovups (%rdx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r15
lea oracles, %rdx
and $0xff, %r15
shlq $12, %r15
mov (%rdx,%r15,1), %r15
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'32': 226}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
