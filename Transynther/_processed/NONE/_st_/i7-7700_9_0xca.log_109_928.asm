.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x17654, %rsi
lea addresses_WT_ht+0x520c, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub %r11, %r11
mov $113, %rcx
rep movsb
nop
nop
xor %rax, %rax
lea addresses_UC_ht+0xda0c, %rsi
lea addresses_WT_ht+0x6abc, %rdi
nop
xor $50651, %r10
mov $62, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_D_ht+0x3ac, %rax
nop
xor $143, %r14
mov (%rax), %si
and $24176, %r14
lea addresses_WT_ht+0x11088, %r10
nop
nop
inc %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm3
movups %xmm3, (%r10)
nop
nop
nop
nop
nop
xor $46668, %rsi
lea addresses_WC_ht+0x1a24c, %rsi
lea addresses_UC_ht+0x16434, %rdi
clflush (%rdi)
and %r14, %r14
mov $104, %rcx
rep movsb
nop
and $43757, %rcx
lea addresses_WT_ht+0xa20c, %rsi
nop
nop
add %r14, %r14
mov (%rsi), %rdi
cmp %rdi, %rdi
lea addresses_normal_ht+0x1b70c, %rsi
lea addresses_WC_ht+0x134a0, %rdi
nop
nop
xor $35786, %r14
mov $56, %rcx
rep movsq
nop
nop
cmp $43687, %r14
lea addresses_WT_ht+0x1320c, %rcx
nop
nop
nop
nop
nop
sub %r10, %r10
movups (%rcx), %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
add $27114, %r11
lea addresses_UC_ht+0xfe48, %rdi
nop
nop
nop
nop
nop
xor $2879, %rcx
mov (%rdi), %esi
nop
nop
nop
nop
xor $54095, %rsi
lea addresses_WC_ht+0x1efcc, %rsi
lea addresses_A_ht+0x1dd2c, %rdi
nop
nop
nop
xor %r15, %r15
mov $39, %rcx
rep movsw
nop
dec %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x88ac, %rdi
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %rax
movq %rax, (%rdi)
nop
nop
nop
nop
nop
sub %r9, %r9

// Store
lea addresses_RW+0xc10c, %rax
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm1
vmovups %ymm1, (%rax)
sub $16031, %rsi

// Store
lea addresses_PSE+0x818c, %r15
nop
nop
nop
nop
xor $38414, %rax
movw $0x5152, (%r15)
nop
nop
sub %r9, %r9

// Load
mov $0xca55600000000b4, %rax
nop
nop
nop
nop
add %rcx, %rcx
vmovups (%rax), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9

// Exception!!!
nop
mov (0), %r9
nop
nop
nop
inc %rcx

// Store
mov $0xa0c, %rax
nop
and $41644, %rbx
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
inc %rsi

// Store
mov $0xa0c, %rbx
nop
nop
dec %r15
mov $0x5152535455565758, %r9
movq %r9, (%rbx)
nop
nop
nop
cmp %rcx, %rcx

// Faulty Load
lea addresses_A+0xba0c, %rcx
nop
add $26302, %rsi
movb (%rcx), %r9b
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_PSE'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}}
{'58': 109}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
