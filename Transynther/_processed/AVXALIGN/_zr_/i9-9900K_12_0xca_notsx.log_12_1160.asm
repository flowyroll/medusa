.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x12f46, %rdi
nop
nop
xor %r9, %r9
mov (%rdi), %r8w
nop
xor $47346, %rsi
lea addresses_D_ht+0x1929b, %r8
add %rcx, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm6
and $0xffffffffffffffc0, %r8
movntdq %xmm6, (%r8)
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0xec1b, %r8
clflush (%r8)
nop
nop
xor %r15, %r15
movb (%r8), %r11b
nop
nop
nop
nop
nop
sub $13016, %rcx
lea addresses_A_ht+0xf99b, %r15
cmp %rcx, %rcx
movb (%r15), %r8b
nop
nop
nop
nop
sub %r15, %r15
lea addresses_WC_ht+0x1dedb, %r8
xor %r15, %r15
movl $0x61626364, (%r8)
nop
xor %rcx, %rcx
lea addresses_A_ht+0x1ec1b, %rsi
lea addresses_normal_ht+0x1b96f, %rdi
nop
nop
cmp $43363, %r10
mov $5, %rcx
rep movsq
nop
nop
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rdi
push %rsi

// Faulty Load
lea addresses_US+0x1541b, %r15
nop
nop
nop
nop
and $754, %rsi
mov (%r15), %r11d
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rsi
pop %rdi
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'00': 12}
00 00 00 00 00 00 00 00 00 00 00 00
*/
