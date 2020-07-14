.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1a8f5, %rsi
lea addresses_D_ht+0x1ae55, %rdi
sub $60655, %r10
mov $87, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_WC_ht+0x18cd5, %rsi
lea addresses_WC_ht+0x102f5, %rdi
nop
cmp %r11, %r11
mov $101, %rcx
rep movsb
nop
nop
nop
sub $22547, %r14
lea addresses_WT_ht+0x1a8f5, %rsi
lea addresses_WC_ht+0xdcf5, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $10, %rcx
rep movsb
cmp $28309, %rdi
lea addresses_WC_ht+0x2193, %r11
clflush (%r11)
nop
nop
nop
nop
nop
xor %r10, %r10
movb (%r11), %bl
nop
nop
nop
nop
nop
lfence
lea addresses_WT_ht+0x1dd05, %r11
xor %r10, %r10
movw $0x6162, (%r11)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x11175, %rbx
nop
nop
nop
inc %r14
movb (%rbx), %r11b
nop
nop
nop
nop
xor $8736, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r9
push %rdi
push %rsi

// Store
lea addresses_RW+0xe8f5, %r15
inc %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm3
vmovups %ymm3, (%r15)
cmp $17475, %r15

// Faulty Load
lea addresses_A+0x34f5, %r12
nop
nop
cmp $17935, %r11
vmovups (%r12), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r9
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rsi
pop %rdi
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 2068, '46': 16890, '48': 2871}
46 00 46 46 00 46 00 00 46 00 00 48 00 48 46 48 48 48 46 46 46 46 46 46 46 00 00 00 48 46 48 46 46 48 46 48 48 00 46 46 00 00 48 46 48 48 46 00 00 46 00 46 00 46 46 48 48 46 46 46 46 46 46 48 46 48 00 46 46 46 46 48 48 00 48 46 48 48 46 48 46 48 00 00 00 48 46 46 00 48 00 46 00 46 48 00 00 00 46 46 46 46 46 46 00 46 48 00 46 46 46 00 48 48 46 00 46 46 46 46 00 46 46 46 46 46 48 00 48 46 46 46 00 46 46 48 48 46 48 00 46 00 46 46 00 00 46 46 46 46 46 46 46 00 46 46 46 48 46 00 48 00 46 46 46 48 46 46 00 00 46 48 46 00 48 46 48 00 00 00 46 46 48 46 48 46 48 46 46 00 00 48 48 48 48 46 00 48 00 46 46 00 00 46 46 46 46 46 46 46 46 00 46 48 46 46 46 46 46 46 46 48 00 46 46 46 46 48 48 48 48 00 48 46 46 00 46 46 48 46 48 46 48 00 46 46 48 46 46 46 46 48 46 48 46 48 46 48 46 46 00 46 00 46 46 48 46 00 46 00 46 00 46 46 00 00 46 46 48 46 00 46 46 46 46 00 46 46 48 00 46 46 46 46 00 00 00 46 00 00 00 46 48 00 48 46 00 00 48 48 46 46 46 00 48 00 46 46 00 00 00 46 48 00 46 46 48 46 00 48 00 00 46 00 48 48 00 00 46 48 00 46 46 48 00 00 48 46 46 46 00 46 46 00 48 46 46 46 46 48 46 46 46 00 46 46 00 46 48 46 00 00 48 48 46 00 00 00 46 46 00 46 00 46 46 48 46 00 48 46 46 00 00 48 46 48 46 00 48 46 00 00 46 46 46 48 46 46 46 00 48 48 46 00 46 00 46 46 00 46 46 00 00 48 46 46 00 00 46 46 46 46 46 46 46 46 46 00 46 46 48 46 46 48 46 46 46 46 46 00 46 46 48 48 46 48 46 46 46 46 00 46 00 48 00 48 00 46 00 46 46 46 00 48 46 00 46 00 46 48 46 48 46 46 46 48 46 46 48 46 48 00 48 46 48 46 48 48 48 00 46 48 48 46 48 48 00 46 00 46 00 46 46 46 48 46 00 46 00 00 46 48 00 46 46 46 00 48 00 46 00 46 46 46 46 46 00 00 00 48 00 00 48 46 00 48 48 00 46 00 46 46 46 46 46 48 46 00 46 48 00 00 48 48 48 46 00 46 00 46 48 00 48 46 48 46 00 00 46 46 00 46 48 46 48 46 00 46 46 46 46 48 46 46 48 00 46 00 46 46 46 46 48 00 46 46 48 46 46 46 48 46 46 46 48 48 46 46 00 00 46 46 46 00 46 46 00 00 46 46 46 48 46 46 46 48 00 48 00 46 00 46 48 00 00 46 00 46 46 46 48 00 48 46 48 46 00 00 00 48 46 46 00 48 46 00 46 46 48 48 48 00 00 48 46 48 48 46 46 46 46 48 00 46 48 48 00 46 00 46 48 00 48 46 46 00 00 46 46 46 00 48 46 46 46 46 46 46 46 46 46 00 48 46 00 46 46 46 46 00 00 46 46 48 46 00 46 46 46 46 00 46 46 46 46 46 48 46 46 46 46 46 46 46 48 46 46 46 48 46 00 00 46 46 46 00 46 46 48 00 46 46 46 48 46 48 46 46 48 46 46 00 00 00 46 00 46 46 48 00 46 00 46 00 48 46 48 46 46 46 00 48 00 46 46 00 00 46 00 46 46 00 48 46 48 46 46 48 46 46 00 46 00 46 46 48 46 46 00 46 46 00 00 46 46 00 48 46 00 46 46 00 48 00 48 46 46 00 46 46 48 46 48 46 48 00 48 48 46 00 00 46 46 48 46 00 46 46 48 46 46 46 00 46 46 46 46 46 46 00 00 46 46 48 46 46 48 00 46 46 46 00 48 00 46 46 48 48 46 46 46 46 46 46 46 00 48 00 46 46 00 46 00 46 00 48 48 46 46 46 48 00 48 00 46 46 46 46 00 00 46 46 00 46 48 46 00 46 46 48 46 46 00 00 46 46 00 46 48 46 46 46 00 00 46 46 46 46 46 48 48 00 48 46 48 46 46 46 46 46 46 46 46 46 46 46 46 48 00 46 46 46 48 00 46 46 46 46 46 00 48 46 48 46 00 46 46 46 46 46 46 46 46 46 46 46 46 00 48 46
*/
