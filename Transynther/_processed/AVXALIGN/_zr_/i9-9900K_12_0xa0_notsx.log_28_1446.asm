.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x3479, %rsi
lea addresses_WC_ht+0x144a5, %rdi
nop
cmp $31185, %r11
mov $2, %rcx
rep movsb
nop
nop
nop
nop
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rax
push %rcx
push %rdi

// Store
lea addresses_normal+0xd56d, %rax
nop
nop
nop
add %r15, %r15
mov $0x5152535455565758, %r10
movq %r10, (%rax)

// Exception!!!
nop
mov (0), %rdi
nop
nop
and %r11, %r11

// Store
mov $0x53e9070000000971, %r15
sub $59042, %r11
movw $0x5152, (%r15)
cmp $28943, %rax

// Store
lea addresses_WT+0x6a25, %r10
nop
nop
sub %rcx, %rcx
movl $0x51525354, (%r10)
nop
nop
cmp $31548, %r15

// Store
lea addresses_PSE+0xda25, %rax
clflush (%rax)
nop
cmp %r8, %r8
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_WT+0x6a25, %rdi
nop
nop
nop
and %r10, %r10
movw $0x5152, (%rdi)
nop
nop
add %r10, %r10

// Faulty Load
lea addresses_WT+0x6a25, %rcx
sub $34093, %r8
vmovaps (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': True, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': True}}
{'00': 28}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
