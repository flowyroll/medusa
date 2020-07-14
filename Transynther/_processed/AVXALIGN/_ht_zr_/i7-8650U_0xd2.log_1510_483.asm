.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x6932, %rbp
clflush (%rbp)
nop
nop
nop
nop
sub $39262, %r8
movw $0x6162, (%rbp)
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_normal_ht+0x2c2, %r11
nop
sub $28385, %r10
vmovups (%r11), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r8
cmp %rsi, %rsi
lea addresses_A_ht+0x2d82, %r8
nop
nop
nop
sub $33128, %r9
mov (%r8), %ebp
nop
nop
nop
xor $51500, %r8
lea addresses_normal_ht+0x8d82, %rsi
inc %r11
vmovups (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r8
nop
nop
nop
nop
add %r9, %r9
lea addresses_WT_ht+0x17415, %r11
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, (%r11)
xor $46112, %r8
lea addresses_UC_ht+0xbf82, %r11
nop
nop
nop
nop
sub $2986, %r10
movl $0x61626364, (%r11)
nop
nop
cmp %r8, %r8
lea addresses_WC_ht+0x4602, %rsi
lea addresses_normal_ht+0x157e0, %rdi
nop
cmp $13809, %r11
mov $80, %rcx
rep movsb
nop
nop
nop
nop
nop
and %r11, %r11
lea addresses_WC_ht+0xea42, %rsi
lea addresses_A_ht+0x18fda, %rdi
nop
nop
sub $3704, %r8
mov $82, %rcx
rep movsb
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x5cc2, %rsi
lea addresses_normal_ht+0x1a5e2, %rdi
lfence
mov $85, %rcx
rep movsq
nop
nop
nop
add %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rcx
push %rdx

// Store
mov $0x63b60b0000000622, %rcx
nop
nop
nop
nop
cmp $64269, %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movups %xmm7, (%rcx)
nop
nop
nop
nop
sub %rcx, %rcx

// Faulty Load
lea addresses_normal+0xa182, %r11
nop
nop
nop
xor $37502, %r13
vmovntdqa (%r11), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'45': 968, '44': 532, '00': 10}
45 45 45 44 44 45 45 44 45 45 44 45 44 45 44 45 44 44 45 44 45 45 45 44 45 44 45 44 45 45 44 45 44 45 44 45 45 45 45 44 45 45 45 45 44 45 44 45 45 45 45 45 45 44 45 45 45 44 44 45 44 45 45 45 45 45 44 45 45 45 45 44 45 45 45 45 45 45 45 45 44 45 45 45 44 44 45 44 45 44 45 45 45 44 45 44 44 45 45 45 45 45 00 45 44 45 45 44 44 45 45 45 45 45 45 45 45 44 45 44 44 45 44 45 44 44 45 45 45 44 45 44 44 45 44 45 45 45 44 44 45 45 45 45 44 45 44 45 44 45 44 44 45 45 44 45 45 44 45 45 44 45 44 45 44 45 45 44 45 45 44 44 44 44 44 45 45 44 45 44 45 45 45 44 45 44 45 45 45 45 45 45 44 45 45 45 44 44 45 44 45 44 45 45 44 45 44 45 44 45 44 45 44 44 44 45 44 45 45 45 44 45 45 44 45 44 45 45 44 45 44 45 45 44 45 44 45 45 44 45 44 45 45 44 45 45 44 45 44 45 45 44 45 45 45 45 44 45 44 45 44 45 00 45 44 45 44 45 44 44 45 45 44 44 45 44 45 45 44 45 45 44 45 44 45 45 44 45 44 45 45 44 45 44 45 45 44 45 45 45 45 44 45 44 45 45 44 45 45 45 44 44 45 45 45 44 45 45 45 45 44 45 45 44 45 45 45 44 45 45 45 44 45 44 45 45 45 45 45 44 45 45 45 44 45 45 45 45 44 45 45 44 45 45 45 45 44 45 45 45 44 45 44 45 45 44 45 44 45 45 44 44 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 44 45 44 45 45 45 45 44 45 44 45 44 45 00 45 45 45 44 45 44 45 45 45 45 45 45 45 44 45 44 45 45 45 44 45 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 45 44 45 44 45 44 45 45 45 44 45 44 45 45 44 45 44 45 44 45 45 44 45 45 44 45 45 45 45 44 44 45 45 44 45 44 45 44 45 44 45 44 45 44 45 44 45 45 45 45 45 45 45 44 45 45 45 45 44 45 44 45 00 44 45 44 44 45 44 45 45 44 45 45 45 45 44 45 45 44 45 45 44 45 44 45 44 44 45 45 45 45 44 45 45 44 45 45 44 44 45 44 44 45 44 44 45 45 45 45 45 44 45 45 45 44 45 44 44 45 45 44 45 44 45 44 45 44 45 44 45 44 45 45 45 44 45 45 45 44 44 45 44 45 45 44 45 44 45 44 45 44 45 45 45 45 44 45 44 45 44 45 00 45 44 45 44 45 44 44 44 45 45 44 45 44 45 44 45 45 44 45 44 45 44 45 45 45 44 45 45 44 45 44 45 44 45 45 45 44 45 44 45 45 45 45 44 45 44 44 45 45 44 45 45 45 45 44 45 44 44 45 45 45 44 44 45 44 44 45 44 45 45 45 45 45 44 45 45 45 45 44 45 44 45 45 44 45 45 45 44 45 45 44 45 44 45 44 45 45 44 45 45 44 45 45 44 45 45 45 44 45 45 44 45 45 44 45 44 45 45 44 45 45 45 45 45 44 45 45 45 44 45 44 44 44 45 44 45 45 44 45 45 45 45 45 45 44 45 44 44 45 44 45 45 44 45 45 44 44 44 44 45 45 44 45 45 45 44 45 45 45 45 45 44 45 45 44 45 44 45 45 44 45 45 45 44 44 45 45 44 45 45 45 45 44 45 45 44 45 44 44 45 44 45 45 44 45 45 44 45 44 45 44 45 45 44 45 44 45 45 45 45 44 45 45 45 44 45 44 45 45 45 44 44 45 44 45 45 45 45 44 45 44 44 45 45 44 45 45 44 44 45 44 45 44 45 44 45 45 45 44 44 44 45 45 45 45 44 45 44 45 44 45 44 45 44 45 45 44 45 45 45 45 45 44 45 45 44 45 44 45 45 45 45 44 45 44 44 45 44 45 45 44 45 44 45 45 44 45 45 45 45 45 44 44 45 45 44 45 45 44 45 45 44 44 45 45 44 45 45 45 44 45 44 45 45 45 44 45 44 45 44 44 45 44 44 45 45 45 45 45 44 45 44 45 44 45 45 44 45 44 45 45 45 45 00 44 45 45 45 45 45 45 45 45 45 45 45 44 45 44 45 44 45 45 45 44 45 45 44 45 44 44 45 44 45 45 44 45
*/
