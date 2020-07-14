.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x198ba, %r12
nop
nop
nop
cmp %rbp, %rbp
and $0xffffffffffffffc0, %r12
movntdqa (%r12), %xmm0
vpextrq $1, %xmm0, %r15
nop
nop
nop
nop
nop
sub $16957, %rdi
lea addresses_D_ht+0x120ca, %rsi
cmp $63202, %r11
movb (%rsi), %r12b
nop
sub $57633, %rsi
lea addresses_WC_ht+0x983a, %rdi
nop
nop
nop
nop
nop
sub $46847, %r11
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
and $0xffffffffffffffc0, %rdi
vmovntdq %ymm2, (%rdi)
nop
nop
cmp $3517, %r11
lea addresses_WC_ht+0x1605a, %rsi
lea addresses_UC_ht+0x7da, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $15731, %r10
mov $24, %rcx
rep movsb
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x1d33a, %rsi
nop
add $64395, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rsi)
nop
and $28731, %rbp
lea addresses_WC_ht+0x16012, %rdi
cmp %r10, %r10
mov (%rdi), %rbp
nop
nop
nop
nop
nop
xor $26435, %r10
lea addresses_WT_ht+0x107f0, %r10
clflush (%r10)
nop
nop
nop
nop
sub $15922, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
nop
inc %rbp
lea addresses_A_ht+0x402c, %rsi
lea addresses_A_ht+0xe10e, %rdi
nop
xor $54743, %r11
mov $48, %rcx
rep movsl
nop
sub $54251, %rcx
lea addresses_WC_ht+0x839a, %r15
nop
xor $23581, %r10
movb (%r15), %r12b
cmp $6704, %r11
lea addresses_A_ht+0x17bba, %rsi
lea addresses_UC_ht+0x3bba, %rdi
nop
nop
nop
add %r15, %r15
mov $110, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x1dc66, %rbp
nop
nop
nop
nop
nop
lfence
movl $0x61626364, (%rbp)
nop
nop
nop
cmp $64134, %r10
lea addresses_UC_ht+0xf73a, %rcx
add $27935, %rsi
vmovups (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r12
nop
nop
nop
nop
and $40738, %r15
lea addresses_WC_ht+0x105ba, %rsi
lea addresses_normal_ht+0x3dda, %rdi
nop
nop
nop
nop
cmp %r10, %r10
mov $96, %rcx
rep movsl
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rax
push %rsi

// Store
lea addresses_normal+0x1697a, %rax
nop
inc %r9
movb $0x51, (%rax)
nop
nop
nop
cmp $59021, %rsi

// Store
mov $0x1ba, %r9
nop
dec %r15
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%r9)
nop
nop
nop
nop
nop
inc %r14

// Faulty Load
lea addresses_UC+0xd9ba, %r15
clflush (%r15)
nop
nop
nop
nop
nop
sub $47251, %r9
mov (%r15), %r11
lea oracles, %rax
and $0xff, %r11
shlq $12, %r11
mov (%rax,%r11,1), %r11
pop %rsi
pop %rax
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 7, 'AVXalign': False, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 1, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}}
{'46': 54, '48': 469, '45': 1842, '53': 502, '50': 16, 'de': 27, '80': 14, 'ff': 7060, '02': 4, '29': 1132, '00': 10695, '3c': 1, 'e0': 6, '26': 7}
00 00 ff 45 00 ff 00 ff 00 ff 00 00 00 ff 00 45 00 ff 29 00 ff 00 ff 29 00 ff 29 00 ff 29 00 45 00 50 ff 45 00 ff 00 ff 00 ff 00 ff 00 ff 00 45 00 00 ff 29 00 00 ff 00 45 00 48 ff 00 ff 00 ff 00 45 00 00 ff 00 ff 00 ff 00 ff 00 ff 45 00 00 ff 29 00 53 00 45 00 53 00 ff 00 00 ff 00 00 ff 00 48 ff 00 ff 00 ff 00 ff 00 ff 29 00 00 ff 45 00 ff 00 ff 00 48 ff 29 00 ff 00 ff 00 ff 45 00 00 ff 00 ff 00 00 ff 00 45 00 ff 00 45 00 46 ff 00 00 ff 45 00 00 ff 00 ff 00 00 45 00 53 00 45 00 ff 00 ff 00 00 ff 00 ff 00 ff 29 00 ff 00 45 00 53 00 ff 00 ff 00 53 00 ff 00 ff 00 00 ff 00 ff 00 ff 29 00 00 ff 00 ff 00 ff 00 45 00 ff 00 ff 00 ff 45 00 ff 00 00 ff 29 00 ff 00 ff 00 53 00 00 ff 00 ff 00 ff 00 ff 00 ff 00 45 00 ff 29 00 ff 00 ff 29 00 ff 00 ff 00 ff 00 53 00 ff 00 45 00 00 ff 00 ff 00 ff 00 45 00 ff 00 ff 00 ff 00 ff 00 50 ff 00 00 ff 29 00 00 00 00 00 ff 00 ff 00 00 45 00 00 ff 00 45 00 ff 00 ff 00 ff 00 00 ff 29 00 ff 00 48 ff 00 ff 00 ff 45 00 00 ff 29 00 00 ff 00 00 ff 00 45 00 ff 00 ff 29 00 45 00 00 48 ff 00 00 ff 00 00 00 00 ff 45 00 00 ff 00 ff 00 ff 45 00 ff 00 ff 00 00 ff 45 00 ff 00 ff 29 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 53 00 ff 00 ff 45 00 00 ff 00 ff 00 00 ff 00 00 ff 00 ff 29 00 53 00 ff 45 00 00 00 45 00 ff 00 ff 00 ff 29 00 45 00 ff 29 00 ff 00 00 46 ff 00 00 ff 00 45 00 ff 00 ff 00 ff 00 ff 00 ff 45 00 ff 00 ff 00 ff 00 ff 00 00 ff 00 00 48 ff 00 00 ff 00 45 00 ff 00 ff 00 53 00 ff 00 ff 00 ff 00 ff 00 45 00 00 45 00 ff 00 ff 00 ff 45 00 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 45 00 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 ff 00 00 ff 29 00 48 53 00 ff 00 ff 00 ff 00 ff 45 00 ff 00 ff 00 48 ff 00 ff 00 ff 29 00 48 ff 00 45 00 ff 29 00 48 00 ff 45 00 00 ff 00 45 00 ff 45 00 ff 00 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 48 45 00 ff 00 00 ff 00 ff 00 ff 00 ff 45 00 00 ff 00 ff 00 00 ff 45 00 48 53 45 00 ff 00 00 ff 29 00 ff 00 00 45 00 ff 00 45 00 ff 29 00 ff 29 00 ff 00 ff 29 00 ff 00 ff 29 00 ff 29 00 ff 00 ff 00 45 00 53 00 45 00 ff 45 00 ff 00 ff 00 00 45 00 00 ff 00 ff 00 ff 00 45 00 ff 00 ff 00 ff 29 00 ff 00 00 ff 00 ff 29 00 ff 00 ff 00 53 00 ff 00 45 00 46 ff 00 ff 29 00 53 00 00 45 00 53 00 00 ff 00 ff 45 00 ff 45 00 ff 00 ff 00 ff 29 00 00 00 ff 45 00 00 ff 00 45 00 ff 00 ff 00 48 ff 00 ff 29 45 00 ff 00 ff 00 ff 00 ff 00 00 ff 45 00 00 ff 29 00 00 00 ff 29 00 ff 00 53 00 ff 00 ff 00 ff 00 ff 00 ff 45 00 ff 00 ff 00 00 ff 00 00 00 ff 00 ff 00 53 00 00 ff 00 45 00 00 00 ff 00 ff 29 00 45 00 ff 00 ff 00 00 ff 00 ff 45 00 00 ff 00 45 00 ff 00 45 00 ff 45 00 ff 80 ff 29 00 00 ff 00 45 00 ff 00 45 00 ff 00 48 53 00 ff 00 ff 45 00 ff 46 ff 00 ff 29 00 ff 00 00 29 00 ff 00 ff 00 45 00 ff 00 53 00 ff 29 00 ff 29 00 ff 00 ff 45 00 00 ff 29 ff 00 00 ff 00 ff 00 ff 00 ff 00 ff 00 45 00 ff 29 00 ff 00 ff 00 ff 00 ff 45 45 00 29 00 ff 29 00 45 00 00 53 00 ff 00 ff 45 00 ff 00 ff 00 ff 00 45 00 00 ff 29 00 ff 29 00 48 ff 00 ff 00 ff 45 00 ff 00 00 ff 00 ff 00 ff 00 ff 29 00 00 ff 29 00 ff 00 ff 00 53 00 48 ff 00 00 00
*/
