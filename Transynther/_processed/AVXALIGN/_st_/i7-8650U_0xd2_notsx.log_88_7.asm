.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xe02e, %rsi
lea addresses_WT_ht+0x156ee, %rdi
nop
nop
nop
sub $2922, %r15
mov $99, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $52995, %rdx
lea addresses_A_ht+0x87ee, %r12
nop
nop
xor $13645, %rdx
movw $0x6162, (%r12)
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x116ee, %rdx
nop
nop
sub %r14, %r14
movl $0x61626364, (%rdx)
nop
add $19836, %r15
lea addresses_WT_ht+0x176ee, %rdi
clflush (%rdi)
nop
add $994, %r15
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
nop
nop
add %r15, %r15
lea addresses_D_ht+0xd16e, %rdi
nop
nop
nop
nop
cmp $18060, %rcx
movw $0x6162, (%rdi)
xor %rdi, %rdi
lea addresses_normal_ht+0xaeae, %rsi
lea addresses_D_ht+0x1dd4e, %rdi
nop
nop
sub $21721, %r13
mov $45, %rcx
rep movsw
inc %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r9
push %rcx
push %rdi

// Faulty Load
lea addresses_PSE+0x17eee, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
xor %r15, %r15
movb (%rcx), %r11b
lea oracles, %r9
and $0xff, %r11
shlq $12, %r11
mov (%r9,%r11,1), %r11
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'33': 88}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
