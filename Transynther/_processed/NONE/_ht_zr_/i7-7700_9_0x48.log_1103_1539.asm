.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xa08, %r8
nop
nop
cmp $59315, %rbp
mov (%r8), %di
nop
nop
nop
sub $13395, %rcx
lea addresses_WC_ht+0x1dfdf, %rdi
nop
nop
and $17058, %rcx
movl $0x61626364, (%rdi)
xor %rsi, %rsi
lea addresses_WT_ht+0x2f5d, %r11
nop
add $29432, %rbx
movb $0x61, (%r11)
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x1a691, %rsi
lea addresses_WC_ht+0x17ead, %rdi
clflush (%rdi)
nop
xor %rbp, %rbp
mov $71, %rcx
rep movsl
nop
nop
nop
and $46540, %r11
lea addresses_WC_ht+0x1c0f1, %rbp
clflush (%rbp)
add $5574, %rcx
mov (%rbp), %edi
nop
cmp %rbp, %rbp
lea addresses_A_ht+0x15580, %r8
nop
nop
nop
add %rbx, %rbx
movb $0x61, (%r8)
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0xcd9d, %rbx
nop
nop
sub $6048, %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%rbx)
nop
nop
dec %rcx
lea addresses_WC_ht+0x5f3d, %rsi
nop
nop
nop
nop
nop
and $41339, %r8
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%rsi)
dec %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rbx
push %rdi
push %rsi

// Store
mov $0xafa680000000aad, %rdi
xor $62661, %r13
movb $0x51, (%rdi)
nop
nop
nop
nop
sub $11515, %r9

// Faulty Load
lea addresses_A+0x1e6ad, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %rsi
vmovups (%rdi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r13
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'48': 806, '00': 297}
48 00 48 48 48 48 48 48 00 48 48 00 48 00 48 48 48 48 48 00 00 48 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 00 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 48 48 48 48 48 00 00 00 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 00 48 48 48 48 00 00 48 48 00 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 00 00 00 48 48 48 48 48 48 00 48 00 48 00 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 00 00 48 48 48 48 48 00 00 48 48 48 48 00 48 00 48 48 48 48 48 48 00 00 48 00 48 48 48 48 48 00 48 48 48 48 48 00 00 00 48 48 48 00 48 48 48 48 00 48 00 00 48 48 48 00 48 48 48 48 48 00 48 00 48 48 00 48 00 00 48 00 00 48 48 48 48 00 48 48 48 48 00 48 48 00 00 48 48 48 00 00 00 48 48 48 48 48 00 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 00 48 48 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 00 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 00 00 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 00 48 48 48 48 00 00 48 48 00 48 48 48 00 48 48 00 48 00 48 00 48 00 48 00 00 48 48 48 48 48 00 48 48 00 00 48 00 48 00 00 48 48 00 48 48 00 48 48 48 48 00 48 48 00 00 48 00 00 48 48 00 48 48 48 48 48 48 48 48 48 00 00 48 48 48 00 48 00 48 48 00 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 00 48 48 00 48 48 00 48 48 48 48 48 48 00 00 48 00 00 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 00 48 48 48 48 48 00 00 48 00 48 48 48 48 48 48 48 48 00 48 00 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 00 00 48 00 00 48 00 48 00 48 48 48 48 00 00 48 00 48 48 48 48 48 48 48 48 00 00 48 48 48 48 00 48 00 00 48 00 48 48 48 00 48 00 48 48 48 48 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 00 00 48 00 48 00 48 48 48 00 48 48 48 48 48 48 00 00 00 00 48 00 48 48 48 00 00 48 48 48 48 00 00 48 48 00 48 48 48 48 48 00 00 00 00 48 48 48 48 48 00 48 00 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 00 48 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 00 00 48 00 48 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 00 48 48 48 48 48 48 48 00 00 00 48 48 48 00 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 00 00 48 48 48 48 00 48 48 00 48 48 00 48 00 48 48 48 48 00 48 48 00 00 48 00 48 00 48 48 00 48 48 00 00 00 48 48 48 00 48 00 48 48 48 00 48 48 48 48 48 48 48 48 00 48 00 00 48 48 48 48 48 48 48 00 48 48 48 48 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 00 48 00 48 48 00 48 48 48 48 48 00 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 48 00 00 48 48 48 00 48 00 00 00 00 00 48 48 48 48 48 48 00 00 00 48 48 48 00 48 00 00 48 00 48 48 48 48 48 00 48 48 48 00 48 00 48 00 48 48 48 48 48 48 48 00 48 48 48 00 00 48 48 00 48 48 48 48 48 00
*/
