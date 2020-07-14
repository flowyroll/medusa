.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x2d04, %rsi
lea addresses_D_ht+0x10304, %rdi
nop
nop
add $16310, %r10
mov $100, %rcx
rep movsb
nop
add $28352, %rcx
lea addresses_D_ht+0x15604, %rdi
sub $32777, %r9
mov (%rdi), %r11d
add $20823, %r11
lea addresses_D_ht+0x6284, %r9
nop
nop
nop
nop
nop
add $18755, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r9)
nop
sub %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x1e104, %rsi
nop
nop
nop
nop
nop
dec %r11
mov $0x5152535455565758, %rbp
movq %rbp, (%rsi)
and $7743, %r11

// Store
lea addresses_A+0x15684, %r8
nop
nop
nop
nop
sub %rdi, %rdi
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_A+0x6b84, %r8
nop
nop
nop
nop
nop
cmp $44382, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, (%r8)
nop
nop
nop
nop
nop
dec %rsi

// Faulty Load
lea addresses_US+0x1d104, %r8
nop
nop
nop
dec %rsi
mov (%r8), %ecx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': True, 'AVXalign': True, 'size': 4, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': True, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'00': 1, '58': 15}
00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
