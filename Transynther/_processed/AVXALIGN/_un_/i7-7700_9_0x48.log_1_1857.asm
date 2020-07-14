.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x132be, %rdi
nop
nop
xor $64532, %r10
movw $0x6162, (%rdi)
nop
dec %r13
lea addresses_WT_ht+0x10eee, %rsi
lea addresses_UC_ht+0x10cbe, %rdi
nop
dec %r11
mov $32, %rcx
rep movsl
nop
nop
nop
nop
nop
and %r10, %r10
lea addresses_normal_ht+0x1104e, %rsi
lea addresses_WT_ht+0x10abe, %rdi
nop
nop
cmp %r9, %r9
mov $93, %rcx
rep movsb
nop
nop
dec %rcx
lea addresses_A_ht+0xa53e, %r9
nop
nop
nop
nop
sub %r10, %r10
movl $0x61626364, (%r9)
nop
nop
nop
nop
add $58595, %rcx
lea addresses_D_ht+0x30be, %rsi
nop
nop
nop
nop
nop
add %r9, %r9
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
nop
nop
lfence
lea addresses_normal_ht+0x133be, %rsi
lea addresses_normal_ht+0x1c7f6, %rdi
clflush (%rsi)
nop
nop
and %rax, %rax
mov $76, %rcx
rep movsq
cmp $9721, %rax
lea addresses_A_ht+0xe896, %r9
nop
sub $540, %r11
movb $0x61, (%r9)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_UC_ht+0x92be, %rsi
lea addresses_A_ht+0x18b3e, %rdi
nop
nop
nop
nop
sub %r10, %r10
mov $116, %rcx
rep movsb
sub $57279, %rsi
lea addresses_D_ht+0xdcb6, %rsi
lea addresses_UC_ht+0xfdbe, %rdi
nop
nop
nop
sub $42498, %r9
mov $116, %rcx
rep movsl
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0xdebe, %r11
nop
nop
nop
and $1805, %rax
mov $0x6162636465666768, %r9
movq %r9, (%r11)
nop
cmp %r11, %r11
lea addresses_UC_ht+0x1b2be, %r11
nop
nop
nop
nop
add $9348, %rax
mov $0x6162636465666768, %r9
movq %r9, %xmm5
movups %xmm5, (%r11)
xor %rcx, %rcx
lea addresses_WC_ht+0x1b2be, %rsi
lea addresses_WT_ht+0x11cbe, %rdi
nop
nop
nop
nop
nop
sub $20542, %r10
mov $102, %rcx
rep movsl
nop
inc %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x396e, %r8
nop
nop
nop
nop
nop
and %rbx, %rbx
movb $0x51, (%r8)
nop
nop
and %r8, %r8

// REPMOV
lea addresses_RW+0xc78e, %rsi
lea addresses_UC+0x1cd1e, %rdi
nop
sub $44445, %rbx
mov $16, %rcx
rep movsw
nop
nop
and $55934, %rdi

// Store
lea addresses_D+0x1a0be, %rsi
nop
nop
inc %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
movntdq %xmm0, (%rsi)
nop
nop
sub $61759, %rdi

// Store
lea addresses_US+0x14fee, %r8
nop
nop
nop
nop
sub $27697, %r14
movw $0x5152, (%r8)

// Exception!!!
nop
nop
nop
nop
mov (0), %r14
nop
nop
nop
nop
nop
xor %rbx, %rbx

// Faulty Load
mov $0x2be, %rdi
nop
nop
nop
nop
xor $6065, %r8
vmovaps (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': True, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'04': 1}
04
*/
