.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xdcb7, %rax
nop
inc %rbx
movups (%rax), %xmm4
vpextrq $0, %xmm4, %r11
nop
sub %r9, %r9
lea addresses_WC_ht+0x18c9f, %rbx
clflush (%rbx)
nop
nop
nop
nop
cmp %rax, %rax
movl $0x61626364, (%rbx)
nop
nop
cmp %r11, %r11
lea addresses_normal_ht+0x18adf, %rsi
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %rbx
movq %rbx, (%rsi)
cmp %r11, %r11
lea addresses_WT_ht+0x1d79f, %rsi
lea addresses_WC_ht+0x191e7, %rdi
and $9494, %rbx
mov $9, %rcx
rep movsw
nop
dec %rbx
lea addresses_WC_ht+0x1bb5f, %rbp
nop
add $35866, %rcx
mov (%rbp), %r9d
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x3d1f, %r9
nop
nop
and $64369, %r11
movb $0x61, (%r9)
nop
nop
nop
nop
nop
xor $61118, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x719f, %rsi
lea addresses_UC+0x1d79f, %rdi
nop
nop
nop
nop
add %r8, %r8
mov $68, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %rcx

// Load
lea addresses_normal+0x1245, %r8
cmp $43214, %r10
mov (%r8), %ax

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rcx
nop
nop
nop
nop
nop
and $41553, %rcx

// Store
lea addresses_UC+0x1245f, %rax
nop
nop
add %rsi, %rsi
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
and $60247, %r10

// Store
lea addresses_D+0xa9f, %rsi
xor %rdi, %rdi
movb $0x51, (%rsi)
sub %rax, %rax

// Store
lea addresses_WT+0x1307f, %r10
nop
xor %r8, %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm2
vmovups %ymm2, (%r10)
nop
nop
nop
nop
add %rcx, %rcx

// Load
lea addresses_normal+0x1c18f, %r13
sub %r8, %r8
movb (%r13), %cl
nop
nop
nop
nop
xor $29964, %r10

// Load
mov $0x554d3d0000000d9f, %r8
nop
nop
nop
nop
xor %rsi, %rsi
mov (%r8), %edi
and $52510, %r13

// Faulty Load
mov $0x4970ac0000000c9f, %rsi
add %rcx, %rcx
movups (%rsi), %xmm7
vpextrq $1, %xmm7, %r8
lea oracles, %r13
and $0xff, %r8
shlq $12, %r8
mov (%r13,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'49': 187, '00': 8, '36': 4, '48': 4}
49 49 49 49 49 49 49 49 49 00 00 49 49 49 36 49 49 49 48 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 36 49 49 49 49 00 49 49 49 49 49 48 49 49 00 49 49 49 49 49 49 49 49 49 36 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 36 00 49 00 49 49 49 49 49 49 49 49 48 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 48 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49
*/
