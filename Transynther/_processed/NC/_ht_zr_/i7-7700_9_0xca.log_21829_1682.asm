.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x12f7a, %rsi
lea addresses_normal_ht+0x1b5, %rdi
add $5398, %r10
mov $61, %rcx
rep movsb
nop
add $2155, %rcx
lea addresses_normal_ht+0x1d211, %r15
nop
nop
nop
sub $37061, %rbp
mov $0x6162636465666768, %r8
movq %r8, %xmm5
vmovups %ymm5, (%r15)
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0xfa5, %r8
xor %rsi, %rsi
movb $0x61, (%r8)
nop
nop
nop
nop
cmp $39534, %r15
lea addresses_D_ht+0xf95, %rbp
nop
nop
xor %rsi, %rsi
movb (%rbp), %cl
nop
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0xf5a3, %rsi
lfence
mov $0x6162636465666768, %r8
movq %r8, %xmm2
movups %xmm2, (%rsi)
nop
nop
nop
xor $18575, %rcx
lea addresses_normal_ht+0x21b5, %rdi
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
add $52306, %rcx
lea addresses_UC_ht+0x14cbe, %rsi
lea addresses_A_ht+0x4e8d, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
and $8152, %r11
mov $66, %rcx
rep movsw
nop
nop
nop
nop
and %r8, %r8
lea addresses_A_ht+0x103a5, %rsi
nop
sub $36163, %r8
movups (%rsi), %xmm4
vpextrq $1, %xmm4, %rdi
add $260, %r8
lea addresses_WC_ht+0x11205, %rsi
lea addresses_D_ht+0x14a35, %rdi
nop
nop
nop
cmp $35081, %rbp
mov $104, %rcx
rep movsb
and $50261, %r11
lea addresses_WT_ht+0x1a135, %rbp
nop
nop
nop
nop
add $25843, %rcx
mov (%rbp), %r8d
nop
and $25865, %rbp
lea addresses_UC_ht+0x18a69, %rsi
lea addresses_D_ht+0xbea1, %rdi
nop
nop
sub %rbp, %rbp
mov $99, %rcx
rep movsb
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0xeb75, %rdi
cmp $14524, %r11
movb (%rdi), %cl
nop
dec %rdi
lea addresses_WC_ht+0x1e8b5, %r11
nop
nop
nop
sub %r8, %r8
mov $0x6162636465666768, %rdi
movq %rdi, (%r11)
sub %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rax
push %rbp

// Store
lea addresses_WC+0x10e71, %rbp
nop
nop
sub $35193, %r9
mov $0x5152535455565758, %r10
movq %r10, (%rbp)
inc %rbp

// Faulty Load
mov $0x75d9af00000003b5, %r8
nop
nop
nop
nop
nop
dec %rax
vmovups (%r8), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbp
lea oracles, %r8
and $0xff, %rbp
shlq $12, %rbp
mov (%r8,%rbp,1), %rbp
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 4, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}}
{'48': 5898, '00': 15931}
00 48 48 00 00 00 00 48 00 48 48 48 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 48 48 00 48 48 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 48 00 48 00 48 00 48 00 00 00 00 48 00 48 00 48 48 48 48 48 48 48 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 48 48 48 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 48 00 48 48 48 00 00 00 00 00 00 00 00 48 00 48 48 00 48 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 48 48 00 00 00 00 00 00 00 00 48 00 48 48 48 00 48 00 48 48 48 00 00 00 00 00 00 00 00 48 00 48 00 00 48 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 48 48 00 48 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 48 00 00 48 00 48 00 48 00 48 48 00 48 00 48 00 00 00 00 00 00 00 00 00 00 48 48 48 00 00 48 00 48 48 48 00 00 00 00 00 00 00 48 00 48 00 00 48 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 48 00 48 48 48 00 00 00 48 48 48 00 00 00 00 00 00 00 00 48 00 48 00 48 48 48 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 48 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 48 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 48 48 00 48 00 48 48 00 00 00 00 48 00 00 48 00 48 48 00 48 00 48 00 00 48 48 00 00 00 00 00 00 00 00 00 00 48 00 48 48 48 00 00 48 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 48 00 00 48 48 00 00 48 00 48 00 00 00 00 00 00 48 00 00 00 48 00 00 00 48 48 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 48 00 48 48 00 48 00 00 00 00 00 48 00 00 48 00 48 00 00 48 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 48 00 48 48 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 48 48 48 48 48 00 00 00 48 48 48 48 48 48 00 48 00 00 00 00 00 00 00 00 48 48 00 00 00 48 00 00 00 48 48 00 48 00 48 48 00 00 00 00 00 00 00 48 48 00 48 00 48 48 48 48 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 48 48 00 48 48 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 48 00 48 00 48 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 48 48 48 00 00 00 00 00 00 00 00 00 00 00 48 00 48 48 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 48 48 48 00 48 00 00 48 00 48 48 48 00 00 48 00 00 00 00 00 00 48 48 48 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 48 00 48 48 48 48 00 00 00 00 48 00 00 48 48 00 00 00 00 00 00 00 48 48 00 00 48 00 48 48 00 48 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48
*/
