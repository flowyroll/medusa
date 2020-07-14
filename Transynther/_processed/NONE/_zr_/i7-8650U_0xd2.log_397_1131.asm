.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x8bb2, %rdx
nop
nop
nop
and $35928, %rbp
movb (%rdx), %r14b
nop
nop
nop
nop
cmp $7927, %rdx
lea addresses_normal_ht+0x1cb42, %rsi
lea addresses_D_ht+0x15fd2, %rdi
mfence
mov $68, %rcx
rep movsw
nop
nop
nop
sub $58796, %rsi
lea addresses_A_ht+0x5542, %rbp
nop
and %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rbp)
nop
nop
nop
nop
nop
cmp $48969, %rsi
lea addresses_normal_ht+0x9a9a, %r14
nop
mfence
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
nop
sub $63031, %r9
lea addresses_WT_ht+0x17972, %rsi
lea addresses_WC_ht+0x11538, %rdi
clflush (%rsi)
nop
xor %rbp, %rbp
mov $28, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x9d42, %rbp
nop
nop
nop
nop
sub %r14, %r14
mov $0x6162636465666768, %rdx
movq %rdx, (%rbp)
nop
nop
nop
add $17525, %rdi
lea addresses_WT_ht+0x1cd9, %rbp
nop
nop
nop
nop
xor %r9, %r9
mov (%rbp), %r14d
inc %rcx
lea addresses_normal_ht+0x1010c, %r9
nop
nop
and $22717, %rdx
mov $0x6162636465666768, %rbp
movq %rbp, (%r9)
nop
nop
nop
sub $17567, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %rbp
push %rbx
push %rdx

// Store
lea addresses_D+0xa402, %rbp
nop
nop
nop
cmp $13651, %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movups %xmm7, (%rbp)
nop
nop
nop
and %r11, %r11

// Store
lea addresses_D+0x13682, %r10
clflush (%r10)
nop
nop
nop
nop
nop
and %r15, %r15
movb $0x51, (%r10)
nop
inc %rdx

// Load
lea addresses_A+0x12542, %r14
add $44701, %rdx
movb (%r14), %r11b
nop
inc %rdx

// Store
lea addresses_RW+0x13ae2, %rbx
clflush (%rbx)
nop
nop
and $24064, %rdx
movl $0x51525354, (%rbx)
xor $21949, %rdx

// Store
lea addresses_US+0xd042, %r15
nop
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm5
movups %xmm5, (%r15)
nop
nop
and $32174, %r15

// Store
lea addresses_WC+0xfa1a, %r10
nop
xor $29898, %r15
movw $0x5152, (%r10)
nop
nop
nop
xor %r15, %r15

// Faulty Load
lea addresses_A+0x12542, %r11
nop
nop
xor $33417, %r10
movups (%r11), %xmm0
vpextrq $0, %xmm0, %rdx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rdx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'00': 397}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
