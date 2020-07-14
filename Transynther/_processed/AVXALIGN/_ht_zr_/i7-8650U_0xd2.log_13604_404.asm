.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1e1cd, %rsi
lea addresses_D_ht+0x7acd, %rdi
nop
nop
add %r11, %r11
mov $59, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $13689, %r8
lea addresses_WT_ht+0x109cd, %r12
nop
nop
nop
nop
nop
xor $24474, %r13
mov $0x6162636465666768, %r8
movq %r8, %xmm4
vmovups %ymm4, (%r12)
nop
cmp $28489, %r13
lea addresses_normal_ht+0x5cd, %r13
nop
nop
add %rdi, %rdi
movb (%r13), %cl
nop
nop
nop
nop
add $42643, %r12
lea addresses_D_ht+0xa9cd, %rsi
lea addresses_A_ht+0x33cd, %rdi
clflush (%rsi)
nop
dec %rbx
mov $57, %rcx
rep movsq
cmp $36628, %rsi
lea addresses_A_ht+0xebcd, %r8
nop
nop
nop
nop
nop
add $48803, %rcx
movups (%r8), %xmm1
vpextrq $1, %xmm1, %rbx
nop
nop
add $29090, %r11
lea addresses_WT_ht+0x1612d, %r12
nop
nop
xor $44092, %r11
movw $0x6162, (%r12)
nop
nop
add $47170, %rbx
lea addresses_WC_ht+0x10dcd, %rsi
lea addresses_WC_ht+0xae0d, %rdi
nop
xor $39115, %rbx
mov $85, %rcx
rep movsw
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x1ebe5, %rsi
lea addresses_UC_ht+0x10eed, %rdi
nop
nop
nop
cmp %r12, %r12
mov $16, %rcx
rep movsq
nop
nop
nop
nop
sub $8566, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rax
push %rbp
push %rsi

// Store
lea addresses_RW+0x1b8cd, %rsi
nop
nop
add $46360, %rbp
mov $0x5152535455565758, %r15
movq %r15, (%rsi)
add %rsi, %rsi

// Load
mov $0x625, %r10
nop
nop
nop
nop
nop
dec %r12
mov (%r10), %bp
nop
nop
nop
nop
inc %rbp

// Store
lea addresses_PSE+0x1b1a1, %r15
clflush (%r15)
nop
nop
cmp %rsi, %rsi
movb $0x51, (%r15)
nop
nop
nop
nop
add %r15, %r15

// Faulty Load
lea addresses_PSE+0xf5cd, %r12
nop
nop
nop
nop
dec %r11
vmovaps (%r12), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbp
lea oracles, %r12
and $0xff, %rbp
shlq $12, %rbp
mov (%r12,%rbp,1), %rbp
pop %rsi
pop %rbp
pop %rax
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'00': 11433, '48': 2134, '46': 31, '45': 6}
00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 48 00 00 48 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 48 00 00 48 00 48 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 48 00 00 48 00 00 00 00 48 48 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 48 48 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 48 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 48 48 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 48 00 48 00 48 00 48 00 00 00 48 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 48 00 00 48 48 00 00 48 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 48 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 48 00 00 00 48 00 00 48 00 00 48 00 00 48 00 00 00 00 48 00 00 00 48 00 48 00 00 00 48 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 48 00 48 00 00 48 48 00 00 00 48 48 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 48 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 48 00 48 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 48 00 48 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 48 00 48 00 48 00 00 00 00 00 48 00 00 00 48 00 46 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 48 48 00 00 00 00 00 48 48 48 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 48 48 48 48 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00
*/
