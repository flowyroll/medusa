.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1e2c4, %rsi
lea addresses_WT_ht+0x4fe4, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %rax, %rax
mov $107, %rcx
rep movsb
nop
add $44039, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %r9
push %rax
push %rdx

// Store
lea addresses_WT+0x7ce4, %rax
nop
nop
nop
nop
and %r15, %r15
movb $0x51, (%rax)
nop
nop
dec %r15

// Load
mov $0x344e8600000008e4, %r11
dec %r15
movb (%r11), %dl
sub $17982, %r11

// Load
lea addresses_WC+0x178e4, %r13
add $47214, %r15
vmovups (%r13), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r11
nop
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_normal+0x8c2c, %rax
nop
nop
cmp $41212, %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm2
movups %xmm2, (%rax)
nop
nop
dec %r15

// Faulty Load
lea addresses_normal+0x8e4, %r11
nop
nop
nop
nop
nop
and $47460, %r9
movb (%r11), %al
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'34': 243}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
