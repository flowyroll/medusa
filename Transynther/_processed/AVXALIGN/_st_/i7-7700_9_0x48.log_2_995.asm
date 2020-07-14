.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x66b6, %r15
nop
sub $39717, %r9
mov $0x6162636465666768, %rbx
movq %rbx, (%r15)
add %rbp, %rbp
lea addresses_WC_ht+0x19eb6, %rsi
lea addresses_WT_ht+0x1cef6, %rdi
xor %r10, %r10
mov $54, %rcx
rep movsl
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x6156, %rsi
lea addresses_WT_ht+0x94da, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and %r9, %r9
mov $25, %rcx
rep movsq
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_WT_ht+0x64b6, %rsi
lea addresses_WC_ht+0x1b4b6, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $14833, %r15
mov $26, %rcx
rep movsq
nop
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r9
push %rsi

// Store
lea addresses_RW+0x72b6, %rsi
nop
nop
nop
nop
nop
mfence
movl $0x51525354, (%rsi)
nop
nop
nop
xor $31984, %r10

// Faulty Load
lea addresses_D+0x174b6, %r14
add $12287, %r10
movb (%r14), %r11b
lea oracles, %r9
and $0xff, %r11
shlq $12, %r11
mov (%r9,%r11,1), %r11
pop %rsi
pop %r9
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}}
{'36': 2}
36 36
*/
