.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x12802, %rsi
lea addresses_normal_ht+0x11cb4, %rdi
add %r13, %r13
mov $70, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $5154, %r15
lea addresses_WT_ht+0x1705c, %r11
nop
nop
cmp %r10, %r10
movb $0x61, (%r11)
nop
nop
xor $1415, %r11
lea addresses_WC_ht+0x80c4, %r11
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%r11)
nop
nop
nop
add $31446, %r13
lea addresses_D_ht+0x1271c, %r15
nop
nop
nop
and %r11, %r11
vmovups (%r15), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
add $17331, %r10
lea addresses_D_ht+0xa0fc, %rsi
lea addresses_A_ht+0x9324, %rdi
nop
nop
nop
nop
nop
cmp $56034, %r9
mov $24, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r15
lea addresses_A_ht+0x18db8, %r11
nop
nop
xor %rsi, %rsi
mov (%r11), %r10w
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x182f6, %r10
clflush (%r10)
sub %r15, %r15
mov (%r10), %r13d
nop
nop
nop
nop
nop
add $32184, %rsi
lea addresses_UC_ht+0x1a2ac, %r11
nop
nop
nop
and %rsi, %rsi
movups (%r11), %xmm7
vpextrq $0, %xmm7, %rcx
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x154fc, %rdi
and $42908, %r10
mov (%rdi), %r9d
nop
nop
nop
nop
sub $10488, %r13
lea addresses_WC_ht+0x2a60, %rsi
lea addresses_normal_ht+0x29b4, %rdi
nop
nop
nop
and $25216, %r9
mov $28, %rcx
rep movsb
nop
nop
nop
nop
nop
add %r15, %r15
lea addresses_D_ht+0xbde, %rsi
nop
dec %r9
movups (%rsi), %xmm2
vpextrq $0, %xmm2, %r13
nop
nop
sub $12641, %r11
lea addresses_normal_ht+0x8f44, %r11
nop
and $35685, %rsi
movb (%r11), %r15b
nop
nop
nop
nop
add %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %r9
push %rbx
push %rdi

// Store
lea addresses_UC+0x114fc, %r8
nop
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %rdi
movq %rdi, (%r8)
nop
sub $61691, %rbx

// Store
mov $0x74d0f70000000414, %r13
xor %r11, %r11
movl $0x51525354, (%r13)
nop
nop
nop
nop
nop
cmp $55155, %r9

// Store
lea addresses_A+0x11991, %r11
xor $40123, %r13
mov $0x5152535455565758, %r8
movq %r8, %xmm1
movups %xmm1, (%r11)
nop
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_A+0x55fc, %r13
nop
nop
nop
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %r9
movq %r9, %xmm3
vmovups %ymm3, (%r13)
nop
and $16164, %rbx

// Faulty Load
lea addresses_D+0x70fc, %r13
nop
nop
nop
xor $48347, %r15
mov (%r13), %rbx
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_D', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 2, 'NT': True, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'36': 511}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
