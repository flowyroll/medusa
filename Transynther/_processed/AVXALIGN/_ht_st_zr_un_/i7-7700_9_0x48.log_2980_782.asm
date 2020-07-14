.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x3081, %rsi
nop
cmp %r12, %r12
movb $0x61, (%rsi)
nop
nop
cmp $50720, %r9
lea addresses_WC_ht+0x509f, %rsi
lea addresses_WT_ht+0x2c41, %rdi
nop
nop
inc %r14
mov $125, %rcx
rep movsb
nop
nop
nop
inc %r14
lea addresses_D_ht+0x10251, %r12
nop
nop
nop
nop
nop
xor $2396, %r9
mov (%r12), %rcx
nop
sub $8673, %rcx
lea addresses_A_ht+0x3181, %rdi
nop
nop
nop
nop
nop
and %r14, %r14
mov (%rdi), %esi
add $14439, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %r9
push %rax
push %rcx

// Load
lea addresses_PSE+0x1d581, %r8
nop
nop
nop
nop
xor $61418, %r10
mov (%r8), %ax
nop
nop
nop
nop
nop
dec %rax

// Load
lea addresses_PSE+0x157a1, %rcx
xor %r8, %r8
mov (%rcx), %r15
nop
sub %r15, %r15

// Store
lea addresses_D+0x1d01, %r10
nop
and $16393, %rax
movw $0x5152, (%r10)
nop
nop
nop
and $23608, %r10

// Store
lea addresses_normal+0xb201, %r15
nop
nop
nop
add $17865, %r11
movl $0x51525354, (%r15)
nop
nop
nop
sub $32837, %r11

// Store
lea addresses_PSE+0x114e1, %r11
nop
nop
add %r8, %r8
mov $0x5152535455565758, %r10
movq %r10, (%r11)
nop
nop
sub $33400, %r11

// Store
lea addresses_D+0x1470b, %r8
nop
nop
dec %rax
mov $0x5152535455565758, %r9
movq %r9, (%r8)
add %r15, %r15

// Store
lea addresses_UC+0x18081, %rax
clflush (%rax)
nop
nop
nop
dec %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm1
movups %xmm1, (%rax)
nop
nop
nop
dec %r10

// Faulty Load
lea addresses_A+0x1d581, %r11
nop
nop
nop
nop
nop
xor $43159, %r9
vmovntdqa (%r11), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r15
lea oracles, %r10
and $0xff, %r15
shlq $12, %r15
mov (%r10,%r15,1), %r15
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'4b': 1, '59': 7, '55': 5, '9b': 2, 'd7': 13, '5b': 60, '2b': 3, 'd5': 29, 'd3': 17, '29': 10, 'e3': 14, '00': 2564, '6b': 11, 'cf': 4, 'bb': 2, '85': 1, '75': 10, 'fb': 19, '47': 29, '91': 1, 'a5': 9, 'cb': 38, 'cc': 42, '7d': 4, '68': 7, '69': 6, 'eb': 33, 'a9': 8, 'db': 23, '7f': 5, '09': 1, '1b': 1, '5a': 1}
00 00 eb eb eb eb eb eb eb eb eb eb eb 00 00 00 00 00 00 00 5b 5b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 cb cb cb cb cb cb cb cb cb cb cb cb cb cb cb cb cb cb cb cb cb cb cb cb cb cb cb cb cb cb cb cb cb cb cb cb cb cb 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 bb bb 00 00 00 00 00 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 6b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2b 2b 2b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 db db db db db db db db db db db db db db db db db db db db db db db 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 cf cf cf cf 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 d3 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc 00 00 00 00 00 68 68 68 68 68 68 68 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 29 29 29 29 29 29 29 29 29 29 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
