.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xb590, %r15
clflush (%r15)
nop
nop
nop
nop
xor $49696, %r12
mov (%r15), %r9d
nop
nop
nop
cmp %r9, %r9
lea addresses_WC_ht+0x6f50, %rcx
nop
xor $508, %r10
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
add $42816, %r12
lea addresses_UC_ht+0xb50, %rsi
cmp $29746, %r10
movw $0x6162, (%rsi)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x18170, %rsi
dec %r8
mov (%rsi), %r10w
nop
nop
cmp $32590, %rcx
lea addresses_UC_ht+0x1ba4c, %r8
nop
nop
nop
xor $18970, %r15
mov $0x6162636465666768, %r9
movq %r9, (%r8)
nop
nop
nop
nop
sub $25266, %r8
lea addresses_D_ht+0x5690, %rsi
lea addresses_A_ht+0x1bdc6, %rdi
clflush (%rdi)
nop
nop
and %r10, %r10
mov $64, %rcx
rep movsb
nop
nop
nop
nop
nop
and %r10, %r10
lea addresses_WT_ht+0x15310, %r15
clflush (%r15)
nop
nop
nop
nop
and %r9, %r9
mov $0x6162636465666768, %r8
movq %r8, %xmm0
vmovups %ymm0, (%r15)
nop
nop
nop
nop
sub %r15, %r15
lea addresses_UC_ht+0x11070, %rsi
lea addresses_D_ht+0xe30, %rdi
clflush (%rsi)
nop
nop
xor $17125, %r12
mov $86, %rcx
rep movsq
and %r9, %r9
lea addresses_UC_ht+0xb954, %r15
nop
nop
nop
add $34837, %r8
mov (%r15), %edi
nop
nop
nop
nop
add %r15, %r15
lea addresses_A_ht+0x6c50, %rcx
nop
nop
nop
nop
dec %r10
mov $0x6162636465666768, %r15
movq %r15, (%rcx)
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_WT_ht+0x1c320, %r10
nop
sub %r12, %r12
mov (%r10), %rcx
nop
nop
and $59405, %r9
lea addresses_UC_ht+0x5890, %rsi
lea addresses_UC_ht+0x7106, %rdi
clflush (%rdi)
nop
nop
and $37221, %r10
mov $23, %rcx
rep movsb
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x12890, %rsi
lea addresses_UC_ht+0x1e150, %rdi
nop
nop
and %r9, %r9
mov $116, %rcx
rep movsl
inc %r10
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rbx
push %rcx
push %rdx
push %rsi

// Store
mov $0x3b86020000000890, %rcx
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r12
movq %r12, (%rcx)
nop
xor $41245, %rbx

// Faulty Load
mov $0x3b86020000000890, %rdx
nop
nop
add $5260, %r14
movb (%rdx), %bl
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'00': 1446, '26': 2, 'a8': 3, 'f4': 1, 'ee': 3, '48': 1, '70': 2, '30': 1, '2e': 2, '8e': 2, 'a0': 1, '92': 1, '8c': 2, '6e': 1, '12': 1, 'f2': 3, '90': 2, '88': 1, '24': 1, '64': 3, 'e8': 1, 'd0': 2, 'aa': 1, 'b4': 1, 'a6': 1, '1e': 1, '2c': 1, '5c': 1, '4c': 2, '38': 1, '4a': 1, '5e': 1, 'ec': 1, 'ca': 1, '58': 1, '28': 1, 'f6': 1, '6a': 1, '96': 1, '3e': 1, 'c0': 1, 'b2': 1, '1c': 1, 'b0': 1, 'fe': 1, 'fc': 1, '44': 1}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 26 00 00 00 00 00 00 00 a8 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f4 00 ee 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 70 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 30 00 2e 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 8e 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 a0 92 00 00 00 00 a8 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 8c 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 6e 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 12 00 00 00 f2 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 90 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f2 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 88 00 00 00 00 00 00 00 00 00 00 00 00 00 00 24 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 64 e8 00 00 2e 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 d0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 a8 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 90 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 64 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 aa 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 b4 00 00 00 00 00 d0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 a6 00 00 00 00 00 1e 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2c 00 00 5c 4c 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 38 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 8c 00 00 00 00 00 00 00 00 00 4a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 5e 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ec 00 00 00 ca 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
