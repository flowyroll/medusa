.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1968f, %rdx
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r10
movq %r10, (%rdx)
and %rcx, %rcx
lea addresses_WT_ht+0x11c8f, %rbx
nop
nop
nop
nop
xor $32723, %rbp
movb $0x61, (%rbx)
nop
nop
nop
nop
sub %r10, %r10
lea addresses_D_ht+0xe8f, %rsi
lea addresses_WC_ht+0xce8f, %rdi
nop
nop
nop
add $22361, %rdx
mov $53, %rcx
rep movsb
nop
nop
nop
nop
and $58939, %rdi
lea addresses_A_ht+0x1e94f, %rsi
lea addresses_WT_ht+0xde8f, %rdi
nop
nop
nop
nop
nop
sub $11131, %rbp
mov $52, %rcx
rep movsl
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_normal_ht+0xda8f, %r11
nop
nop
nop
nop
cmp %rbx, %rbx
movw $0x6162, (%r11)
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x68f, %rbp
nop
sub $23128, %rdx
mov (%rbp), %rbx
nop
nop
cmp $63307, %r11
lea addresses_WC_ht+0xc5af, %rsi
lea addresses_A_ht+0x10a8f, %rdi
nop
mfence
mov $25, %rcx
rep movsw
lfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rbx
push %rcx

// Store
mov $0x28f, %r12
nop
nop
nop
nop
xor $25311, %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
movups %xmm0, (%r12)

// Exception!!!
mov (0), %r12
nop
nop
nop
nop
xor $52195, %r15

// Faulty Load
lea addresses_PSE+0xfe8f, %rcx
dec %r12
movaps (%rcx), %xmm5
vpextrq $1, %xmm5, %r13
lea oracles, %rbx
and $0xff, %r13
shlq $12, %r13
mov (%rbx,%r13,1), %r13
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'45': 3373, '00': 649, '48': 263, '46': 46}
45 00 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 48 45 45 45 45 45 00 45 45 48 45 48 45 48 45 45 45 45 45 45 00 48 45 45 00 45 45 45 45 45 45 00 45 45 45 45 00 45 00 45 45 45 48 45 45 45 00 45 48 00 45 45 45 48 00 45 00 45 45 45 45 45 00 00 45 45 45 00 45 00 48 48 00 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 00 45 48 45 45 46 45 45 00 45 45 45 45 00 00 45 45 45 45 45 45 46 45 45 45 45 00 00 45 45 45 00 45 45 45 45 45 00 45 48 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 48 45 48 45 45 00 45 45 00 00 45 45 45 45 45 45 45 00 45 45 00 45 00 45 48 45 48 00 45 00 45 45 45 45 45 45 45 00 45 45 45 45 00 00 00 45 00 45 00 45 45 00 45 48 00 00 00 45 45 46 00 45 45 45 45 45 48 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 00 45 00 45 45 45 45 48 45 45 45 00 45 45 45 45 45 00 48 45 45 00 45 45 45 45 45 48 45 00 45 45 45 45 00 00 45 45 45 45 45 45 48 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 48 45 00 00 45 45 45 00 45 48 45 48 00 45 45 45 45 45 45 00 45 00 45 45 00 45 00 48 45 00 45 48 45 00 45 45 00 45 00 45 45 45 45 45 00 45 45 00 45 48 45 45 48 45 45 00 45 00 48 45 45 00 45 48 45 45 48 45 45 45 45 45 00 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 00 45 00 48 45 45 45 45 45 45 00 45 45 00 00 00 45 00 48 00 45 48 45 45 45 48 45 45 00 45 45 45 45 00 45 45 48 00 45 45 45 45 45 45 45 00 45 00 45 45 45 00 00 00 45 00 45 45 45 00 45 45 45 45 45 45 45 45 48 45 45 00 00 00 45 00 45 45 45 45 45 45 00 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 00 45 45 45 45 00 00 00 45 45 00 45 45 45 48 45 45 45 00 00 45 45 00 00 00 45 48 45 00 45 45 45 45 00 45 00 00 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 48 45 00 00 45 45 45 45 45 00 45 45 45 45 00 45 45 00 45 00 45 45 45 45 45 00 45 00 45 45 45 45 45 45 00 00 00 00 45 45 45 45 45 45 45 45 48 45 00 45 45 00 45 45 45 45 45 48 45 45 45 45 45 45 45 00 45 45 00 45 45 48 45 45 45 45 45 00 00 45 45 45 48 00 00 45 45 00 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 48 45 48 45 48 48 00 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 00 45 45 45 00 45 00 45 45 00 48 45 00 45 45 45 45 45 48 45 45 45 00 45 45 00 45 45 45 45 45 00 45 45 45 45 00 00 45 45 45 45 45 48 45 45 00 48 48 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 48 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 48 45 45 45 00 45 00 45 00 45 45 48 45 00 45 45 45 00 45 48 45 45 48 45 45 45 48 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 00 45 00 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45
*/
