.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x19a5e, %rsi
lea addresses_WT_ht+0x1b5e, %rdi
clflush (%rsi)
nop
nop
add $6115, %r8
mov $94, %rcx
rep movsb
cmp %r14, %r14
lea addresses_UC_ht+0xde5e, %r12
nop
xor $21361, %r11
mov (%r12), %r8w
dec %rsi
lea addresses_normal_ht+0x1355e, %r12
nop
nop
nop
nop
add %rdi, %rdi
movw $0x6162, (%r12)
xor $49052, %rcx
lea addresses_WC_ht+0xf3be, %rsi
lea addresses_WC_ht+0x17c5e, %rdi
nop
and %rax, %rax
mov $98, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $24719, %rsi
lea addresses_WC_ht+0x1b04e, %rax
nop
nop
mfence
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
movups %xmm5, (%rax)
nop
nop
cmp %r11, %r11
lea addresses_A_ht+0x535e, %rsi
lea addresses_WC_ht+0x17ab6, %rdi
nop
nop
nop
xor $6611, %r11
mov $90, %rcx
rep movsl
nop
nop
nop
nop
xor $98, %rax
lea addresses_WT_ht+0x325e, %r8
nop
nop
nop
nop
add %rcx, %rcx
movw $0x6162, (%r8)
nop
nop
sub $20649, %rcx
lea addresses_WT_ht+0xd49d, %rcx
cmp $30823, %rdi
mov (%rcx), %r14d
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_D_ht+0x151de, %r12
nop
nop
nop
nop
sub %r14, %r14
movups (%r12), %xmm5
vpextrq $0, %xmm5, %rcx
nop
cmp %r12, %r12
lea addresses_UC_ht+0xf1c7, %r8
cmp $27749, %rdi
movups (%r8), %xmm7
vpextrq $0, %xmm7, %rax
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x599e, %r14
nop
nop
nop
nop
nop
dec %r12
mov $0x6162636465666768, %r8
movq %r8, (%r14)
nop
nop
add %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rbp
push %rsi

// Store
lea addresses_A+0x746e, %r14
inc %r13
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
movups %xmm5, (%r14)
nop
nop
nop
sub $17138, %rbp

// Store
lea addresses_WT+0x1ea5e, %r14
nop
add $64036, %r11
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
add $44482, %rsi

// Store
lea addresses_WT+0x1ea5e, %r9
nop
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %r13
movq %r13, (%r9)
sub %r11, %r11

// Faulty Load
lea addresses_WT+0x1ea5e, %r9
nop
nop
xor $35667, %r14
vmovups (%r9), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
lea oracles, %r11
and $0xff, %rsi
shlq $12, %rsi
mov (%r11,%rsi,1), %rsi
pop %rsi
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}}
{'45': 11332, '49': 1001, '00': 9482, '48': 14}
00 45 45 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 45 45 45 00 45 49 45 45 00 00 45 00 00 00 00 00 00 45 45 45 00 00 45 45 00 45 00 00 49 45 00 45 45 45 45 45 49 00 49 00 45 45 45 45 45 00 45 45 45 45 00 00 45 00 00 00 45 49 00 00 45 00 00 00 45 00 00 45 45 45 45 45 45 45 00 45 45 45 45 00 00 45 00 00 45 45 00 00 45 00 00 00 45 45 00 00 00 45 00 00 45 45 45 45 45 45 45 45 45 49 00 00 45 45 45 49 45 45 00 45 45 00 45 45 00 45 45 49 45 00 00 45 00 00 45 45 45 00 45 45 45 00 00 00 00 00 45 00 45 00 00 00 00 45 00 45 00 45 00 00 00 00 45 45 45 45 45 00 45 00 00 45 45 45 45 00 45 00 45 00 49 45 49 45 45 45 45 00 45 00 45 49 45 00 45 00 45 00 45 45 45 00 00 00 00 00 00 45 45 45 45 45 00 45 00 00 45 45 00 00 00 45 45 45 49 45 45 45 45 45 00 45 45 45 45 45 00 00 45 45 00 45 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 45 45 45 00 00 00 00 45 45 00 00 45 45 49 45 00 45 00 45 45 00 00 00 00 00 00 45 00 00 00 45 00 00 00 45 45 00 00 00 45 00 45 00 45 00 00 00 45 45 00 45 00 45 00 00 45 00 45 45 00 49 45 00 45 45 00 45 45 45 45 45 45 00 45 00 45 45 00 49 00 00 00 00 45 45 00 45 45 00 45 45 45 45 45 45 45 00 00 00 45 00 45 45 45 45 45 45 00 45 00 45 00 00 45 00 00 00 45 00 45 00 45 00 00 45 00 45 45 00 45 45 00 45 00 00 00 45 45 45 00 45 00 00 45 00 45 45 00 00 45 00 45 00 00 45 00 45 45 00 45 00 45 45 00 00 45 00 45 45 45 00 45 45 00 49 00 45 00 00 00 45 00 45 45 45 45 00 45 45 45 45 00 00 00 45 00 00 00 45 45 45 45 45 00 00 45 00 00 45 45 45 45 49 45 00 00 45 45 45 45 00 49 45 49 45 45 00 00 00 00 45 45 00 00 49 45 00 45 45 45 45 00 45 00 45 45 00 45 45 00 45 45 45 45 00 45 45 45 49 45 45 00 49 45 45 45 45 45 00 45 00 45 00 00 45 45 49 45 49 45 00 00 00 49 45 00 00 45 45 00 45 45 00 00 45 00 45 45 45 00 45 00 45 45 45 49 00 45 45 45 00 00 00 00 00 45 00 00 45 00 45 00 00 00 00 00 00 00 00 00 45 00 00 45 45 45 00 00 45 00 00 45 00 00 45 45 00 00 00 00 00 00 45 00 00 00 45 00 00 00 45 00 45 45 00 45 00 45 00 00 00 00 00 45 00 45 45 45 00 00 00 45 00 00 45 00 00 49 00 45 45 45 49 00 45 45 45 45 45 45 45 00 00 00 45 45 45 49 00 00 00 49 45 00 45 00 45 00 45 00 45 00 00 00 00 45 45 00 45 49 00 00 45 45 45 45 00 45 49 00 45 45 45 00 45 00 45 45 45 45 45 45 45 45 00 00 45 00 45 00 45 45 45 00 45 45 00 45 45 00 00 45 00 45 45 45 00 00 45 45 00 45 45 45 00 00 45 49 45 45 00 00 00 45 45 00 45 45 00 45 45 00 00 00 00 00 45 00 00 49 45 45 45 45 00 45 45 00 00 00 00 45 45 00 00 45 00 00 49 00 45 00 45 00 00 00 00 45 00 45 45 45 49 45 45 45 00 00 00 00 45 00 45 00 45 45 00 45 00 45 00 45 00 00 00 45 45 45 45 00 45 45 00 00 45 49 00 00 49 00 45 00 00 00 45 45 00 00 45 00 45 00 45 00 49 45 45 45 00 45 00 00 45 00 00 45 49 00 45 45 45 45 45 45 45 00 45 00 00 45 45 00 00 45 00 00 45 00 45 00 45 45 49 45 45 45 45 00 00 45 00 00 00 45 45 00 45 00 45 45 45 45 45 45 00 45 00 00 45 00 45 45 45 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 45 00 45 00 45 45 00 45 45 00 45 00 00 45 45 00 45 00 00 00 00 45 00 45 45 49 45 45 00 00 45 00 45 00 00 45 00
*/
